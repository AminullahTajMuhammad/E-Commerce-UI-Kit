import 'package:flutter/material.dart';
import 'payment_screen.dart';
import 'my_orders_screen.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();

}

class LunchState extends State<CheckoutScreen> {
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
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: initScreen()
    );
  }

  initScreen() {
    return new Container(
        child: Wrap(
          children: <Widget>[
            Container(
              height: 370.0,
              child: ListView(
                children: <Widget>[
                  dummyDataOfListView("images/mask_group_5.png", "Women T-Shirt", "Cloths", "500Rs", 4),
                  dummyDataOfListView("images/mask_group_6.png", "Women T-Shirt", "Cloths", "600Rs", 1),
                  dummyDataOfListView("images/mask_group_8.png", "Women T-Shirt", "Cloths", "800Rs", 3),
                  dummyDataOfListView("images/mask_group_10.png","Women T-Shirt", "Cloths", "100Rs", 4),
                  dummyDataOfListView("images/mask_group_11.png","Women T-Shirt", "Cloths", "1000Rs", 8),
                  dummyDataOfListView("images/mask_group_12.png","Women T-Shirt", "Cloths", "5000Rs", 7),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0),
              child: Text(
                "Shewrapara, Mirpur, Dhaka-1216, House no: 938, Road: 9",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),
              )
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersScreen()));
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
                            'Buy',
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
        )
    );
  }

  dummyDataOfListView(String imgSrc, String itemName, String itemCategory, String itemPrice, int itemCount) {
    return Container(
        child: Card(
          elevation: 4.0,
          margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 5.0),
          color: Color(0xffFFFFFF),
          child: ListTile(
            // on ListItem clicked
            onTap: () {},

            // Image of ListItem
            leading: Container(
              child: Image(
                fit: BoxFit.fitHeight,
                image: AssetImage(imgSrc),
              ),
            ),

            // Lists of titles
            title: Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      "Item Name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      "Item Cetegory",
                      style: TextStyle(
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      "500 RS",
                      style: TextStyle(
                          color: Color(0xff374ABE)
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Item Add and Remove Container
            subtitle: Container(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        if (itemCount < 0) {
                          itemCount = 0;
                        } else {
                          itemCount--;
                        }
                      },
                      child: Icon(
                        Icons.remove,
                        size: 19.0,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.0, top: 1.0, right: 10.0),
                      child: Text(
                        itemCount.toString(),
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),

                    // Add count button
                    GestureDetector(
                      onTap: () {
                        itemCount++;
                      },
                      child: Icon(
                        Icons.add,
                        size: 19.0,
                      ),
                    ),

                  ],
                )
            ),

            // trailing shows the widget on the right corner of the list item
            trailing: Icon(
                Icons.cancel
            ),
          ),
        )
    );
  }

}