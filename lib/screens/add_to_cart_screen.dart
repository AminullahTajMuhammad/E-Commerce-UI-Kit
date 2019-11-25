import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: initScreen(),
    );
  }

  initScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          child: Text(
            "Cart",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0
            ),
          ),
        ),

        Container(
          child: ListView(
            children: <Widget>[
            ],
          ),
        ),

        Expanded(
          child: Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
              onPressed: () {},
              height: 40.0,
              minWidth: double.maxFinite,
              color: Color(0xff64B6FF),
            )
          )
        )
      ],
    );
  }

}