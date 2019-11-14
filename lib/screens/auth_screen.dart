import 'package:flutter/material.dart';
import 'package:e_commerce_ui_kit/screens/login_screen.dart';
import 'package:e_commerce_ui_kit/screens/signup_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: init(context),
    );
  }

  init(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 80.0),
          child: Center(
            child: Text(
              "Welcome to Bold",
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ), // text ends,
          )
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Explore Us",
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ),

        // Login Image
        Container(
          margin: EdgeInsets.only(top: 120.0),
          child: Image(image: loginImage())
        ),

        // Login Button
        Container(
          margin: EdgeInsets.only(top: 130.0),
          child: RaisedButton(

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
                constraints: const BoxConstraints(maxWidth: 250.0, minHeight: 40.0), // min sizes for Material buttons
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
        ),

        // Signup Button
        Container(
          padding: EdgeInsets.all(20.0),
          child: GestureDetector(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
          ),
        )
      ],
    );
  }

  ImageProvider loginImage() {
    AssetImage assetImage = AssetImage("images/login_screen_image.png");
    return assetImage;
  }
}