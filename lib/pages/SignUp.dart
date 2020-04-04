import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(30.0, 120.0, 50.0, 10.0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:30.0,horizontal:30.0),
              child: Column(
                children: [
                  TextField(
                    style:TextStyle(color:Colors.white,fontSize: 20.0),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.cyanAccent,
                              width:3.0),),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.white,
                              width:3.0),),
                        labelText: "Email address",
                        labelStyle: TextStyle(
                          color:Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height:20.0),
                  TextField(
                    style:TextStyle(color:Colors.white,fontSize: 20.0),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.cyanAccent,
                              width:3.0),),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.white,
                              width:3.0),),
                        labelText: "Name",
                        labelStyle: TextStyle(
                          color:Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height:50.0),
                  TextField(
                    obscureText: true,
                    style:TextStyle(color:Colors.white,fontSize: 20.0),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.cyanAccent,
                              width:3.0),),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.white,
                              width:3.0),),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color:Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height:20.0),
                  TextField(
                    obscureText: true,
                    style:TextStyle(color:Colors.white,fontSize: 20.0),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.cyanAccent,
                              width:3.0),),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.white,
                              width:3.0),),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                          color:Colors.white,
                        )
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  IconButton(
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.arrowLeft,),
                    iconSize: 25.0,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      child: Text(
                        "Finish",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),
                  )

                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
