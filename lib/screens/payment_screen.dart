import 'package:flutter/material.dart';
import 'confirm_screen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LunchState();
  }
}

class LunchState extends State<PaymentScreen> {
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
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: initScreen(),
    );
  }

  initScreen() {
    return Wrap(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Image(
            image: AssetImage("images/paypal.png")
          ),
          height: 300.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Best Sale: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "160.00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Discount: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "10%",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Shipping: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "10.00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Total: ",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                "170.00",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),

        Center(
            child: Container(
                margin: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConfirmScreen()));
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
                      constraints: const BoxConstraints(maxWidth: 350.0, minHeight: 40.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Confirm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
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