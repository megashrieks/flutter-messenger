import 'package:flutter/material.dart';

class StartWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "Messaging made\n",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          TextSpan(
                            text: "Easier\n",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(text: "with\n"),
                          TextSpan(
                            text: "Flutter Messenger",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 70.0,
                                color: Colors.cyanAccent,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150.0,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      child: Text(
                        "SIGN ME UP",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/signin");
                    },
                    splashColor: Colors.blue[900],
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70.0, vertical: 15.0),
                      child: Text("SIGN IN",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2.0,
                            color:Colors.white,
                          ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
