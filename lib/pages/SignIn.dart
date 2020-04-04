import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String sign = "something";
  void checkSignIn() async{
    try {
      AuthResult ar = await auth.signInWithEmailAndPassword(
          email: "shrikanthbudya@gmail.com", password: "123456");
      FirebaseUser user = ar.user;
      setState(() {
        if (user == null)
          sign = "unsuccessful";
        else
          sign = user.email;
      });
      print(user);
    }
    catch(e){
      print(e.toString());
    }
  }
  @override
  void initState() {
    super.initState();
    checkSignIn();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Container(child:Text(sign))));
  }
}
