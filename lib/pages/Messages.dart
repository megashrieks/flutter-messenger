import 'package:flutter/material.dart';
import 'package:messenger/pages/ConversationView.dart';
import 'package:messenger/pages/CustomAppBar.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children:[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:15.0),
                      child: SingleChildScrollView(
                          child: ConversationView(),),
                    ),),
                Container(
                  height:80.0,
                  color:Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Enter Message..",
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: (){},
                        child: Text("SEND"),
                      )
                    ],
                  ),
                ),
              ],
            ),
            CustomAppBar(
              identifier: identifier,
            ),
          ],
        ),
      ),
    );
  }
}
