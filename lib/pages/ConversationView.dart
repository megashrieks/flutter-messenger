import 'package:flutter/material.dart';
import 'package:messenger/utils/Conversation.dart';
class ConversationView extends StatefulWidget {
  @override
  _ConversationViewState createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  List<Conversation> conversation = [
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"pika pika pika pikapika pika pika pikapika pika pika pikapika pika pika pikapika pika pika pika"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:false,message:"wassup"),
    Conversation(user:true,message:"wassup"),
    Conversation(user:true,message:"wassup"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height:120.0),
        Column(
              children:conversation.map((Conversation item){
                return Container(
                  color:Theme.of(context).accentColor,
                  margin:EdgeInsets.symmetric(vertical: 10.0),
                  child:Text(item.message),
                );
              }).toList(),
          ),
      ],
    );
  }
}
