import 'package:flutter/material.dart';
import 'package:messenger/utils/MessageItem.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;
    MessageItem identifier = arguments["identifier"];
    print(identifier.name);
    return Material(
      child: SafeArea(
        child: Container(
          child: Stack(
            children: [
              CustomAppBar(identifier: identifier),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Center(child: Text("Messages are displayed here"))],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final MessageItem identifier;

  CustomAppBar({this.identifier});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape:BoxShape.circle,

                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 3.0),
                  ),
                ],

              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30.0),
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 60.0,
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 3.0),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: <Widget>[
                      Hero(
                        tag: identifier.name + "-avatar",
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Theme.of(context).accentColor,
                          child: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Hero(
                        tag: identifier.name + "-name",
                        child: Material(
                          child: Text(
                            identifier.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
