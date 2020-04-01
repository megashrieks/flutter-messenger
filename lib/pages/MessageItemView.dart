import 'package:flutter/material.dart';
import 'package:messenger/utils/MessageItem.dart';

class MessageItemView extends StatelessWidget {
  final MessageItem messageItem;

  MessageItemView({this.messageItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.0),
      height: 80.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => print("show profile"),
              child: Hero(
                tag:messageItem.name+"-avatar",
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag:messageItem.name+"-name",
                        child: Material(

                          child: Text(
                            messageItem.name,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          messageItem.lastMessage,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
