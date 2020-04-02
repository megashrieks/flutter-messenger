import 'package:flutter/material.dart';
import 'package:messenger/utils/Conversation.dart';

class ConversationView extends StatefulWidget {
  @override
  _ConversationViewState createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  List<Conversation> conversation = [
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(
        user: false,
        message:
            "pika pika pika pikapika pika pika pikapika pika pika pikapika pika pika pikapika pika pika pika"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: false, message: "wassup"),
    Conversation(user: true, message: "wassup"),
    Conversation(user: true, message: "wassup"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 120.0),
        Column(
          children: conversation.asMap().map((int index, Conversation item) {
            return MapEntry(
              index,
              Container(
                alignment:
                    item.user ? Alignment.centerRight : Alignment.centerLeft,
                margin: EdgeInsets.only(
                    top: index > 0.0 && conversation[index-1].user == item.user ? 3.0 : 13.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 40.0,
                      maxWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        item.message,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).values.toList(),
        ),
      ],
    );
  }
}
