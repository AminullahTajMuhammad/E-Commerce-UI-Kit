import 'package:flutter/material.dart';
import 'profile_screen.dart';

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
            ),

            Center(
                child: Container(
                    margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                      }, // Click Listener

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
        )
      ],
    );
  }



}