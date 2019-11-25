import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();

}

class LunchState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black),),
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
      body: SingleChildScrollView(
        child: initScreen(),
      ),
    );
  }

  Widget initScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // NameEdit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Name",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),

        // Address Line Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: "Address Line",
                border: OutlineInputBorder()
            ),
            minLines: 1,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
          ),
        ),

        // City Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "City",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),

        // Gender Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Gender",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),

        // Email Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Email",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
          ),
        ),

        // Phone Number Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Phone Number",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }

}