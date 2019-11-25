import 'package:flutter/material.dart';

class ConfirmScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LunchState();
  }

}

class LunchState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(),
    );
  }

  initScreen() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("images/app_logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Confirmation",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "You have successfully completed your payment",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black
                ),
              ),
            )
          ],
        )
      ],
    );
  }



}