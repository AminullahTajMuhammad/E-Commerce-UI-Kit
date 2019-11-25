import 'package:flutter/material.dart';

class CreateAddressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();

}

class LunchState extends State<CreateAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: initScreen(),
      ),
    );
  }

  Widget initScreen() {
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

        // title Text Section
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 30.0),
          child: Text(
            "Create Address",
            style: TextStyle(
                fontSize: 30.0
            ),
          ),
        ),

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

        // Postal Code Edit text
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Postal Code",     // Set text upper animation
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            autofocus: false,
            keyboardType: TextInputType.number,
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

        // Login Button
        Center(
            child: Container(
                margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                child: RaisedButton(
                  onPressed: () {

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
                        'Add Address',
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
      ],
    );
  }

}