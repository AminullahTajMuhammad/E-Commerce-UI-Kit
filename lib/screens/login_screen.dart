import 'package:flutter/material.dart';
import 'package:e_commerce_ui_kit/screens/signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LunchState();
  }
}

class LunchState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: initScreen(context),
      )
      ,
    );
  }

  initScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
//        // Login Back Button Section
        Container(
          margin: EdgeInsets.only(left: 30.0, top: 50.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.keyboard_backspace,
              color: Color(0xffc5ccd6),
              size: 30.0,
            ),
          )
        ),

        // Login Text Section
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 30.0),
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 30.0
            ),
          ),
        ),

        // Email Edit text
        Container(
          margin: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder()
            ),
            minLines: 1,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
          ),
        ),

        // Password Edit text
        Container(
          margin: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Password",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
            obscureText: true,      // Hiding words
          ),
        ),

        // Login Button
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 50.0),
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomeScreen());
                Navigator.push(context, route);
              }, // When Click on Button goto Login Screen

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [new Color(0xff374ABE), new Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 40.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          )
        ),

        Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 30.0),
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't Have any account? "),
                GestureDetector(
                  child: Text(
                    "  Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                )
              ],
            )
          )
        )
      ],
    );
  }
}