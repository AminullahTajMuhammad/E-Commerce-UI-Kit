import 'dart:async';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui_kit/screens/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => AuthenticationScreen()
        )
    );
  }

  initScreen(BuildContext context) {
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
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        )
      ],
    );
  }
}