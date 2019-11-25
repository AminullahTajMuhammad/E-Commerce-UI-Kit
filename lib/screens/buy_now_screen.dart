import 'package:flutter/material.dart';

class BuyNowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();

}

class LunchState extends State<BuyNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: initScreen()
    );
  }

  initScreen() {

  }

}