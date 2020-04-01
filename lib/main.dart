import 'package:flutter/material.dart';
import 'pages/MessageList.dart';
import 'pages/Messages.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.cyanAccent,
      ),
      routes:{
        "/":(context)=>MessageList(),
        "/messages":(context) => Messages(),
      },
      initialRoute: '/',

    );
  }
}
