import 'package:flutter/material.dart';
import 'package:e_commerce_ui_kit/screens/auth_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: setSplashScreen(context)
    );
  }

  Widget setSplashScreen(BuildContext context) {
    AssetImage assetImage = AssetImage("images/app_logo.png");
    Image image = Image(
      image: assetImage,
      height: 200.0,
      width: 250.0,
    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: new Color(0xff7990DD),
            gradient: LinearGradient(colors: [(new  Color(0xff7990DD)), new Color(0xff374ABE)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft
            )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: image,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "E Commerce App",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),   // padding top for button
            RaisedButton(
              color: Colors.deepPurple,
              child: Text("Goto new Activity"),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthenticationScreen())
                );
              },
            )
          ],
        )
      ],
    );
  }

}