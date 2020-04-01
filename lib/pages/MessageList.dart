import 'package:flutter/material.dart';
import 'package:messenger/utils/MessageItem.dart';
import 'package:messenger/pages/MessageItemView.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List<MessageItem> items = [
    MessageItem(name: "Shrikanth", avatarUrl: "S"),
    MessageItem(name: "Abc", avatarUrl: "A"),
    MessageItem(name: "dasdaksd", avatarUrl: "D"),
    MessageItem(name: "Shrikanth1", avatarUrl: "S"),
    MessageItem(name: "Abc1", avatarUrl: "A"),
    MessageItem(name: "dasdaksd1", avatarUrl: "D"),
    MessageItem(name: "Shrikanth2", avatarUrl: "S"),
    MessageItem(name: "Abc2", avatarUrl: "A"),
    MessageItem(name: "dasdaksd2", avatarUrl: "D"),
    MessageItem(name: "Shrikanth3", avatarUrl: "S"),
    MessageItem(name: "Abc3", avatarUrl: "A"),
    MessageItem(name: "dasdaksd3", avatarUrl: "D"),
    MessageItem(name: "Shrikanth4", avatarUrl: "S"),
    MessageItem(name: "Abc4", avatarUrl: "A"),
    MessageItem(name: "dasdaksd4", avatarUrl: "D"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: Theme.of(context).accentColor,
              highlightColor: Theme.of(context).accentColor,
              focusColor: Theme.of(context).accentColor,

              onTap: ()=>Navigator.of(context).pushNamed(
                '/messages',
                arguments: {
                  "identifier":items[index]
                },
              ),
              child:MessageItemView(messageItem:items[index])
            );
          },
        ),
      ),
    );
  }
}
