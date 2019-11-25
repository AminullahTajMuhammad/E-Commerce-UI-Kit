import 'package:flutter/material.dart';
import 'create_address_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.black
          ),
        ),
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
    return new Container(
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              dummyDataOfListView("images/mask_group_5.png", "Women T-Shirt", "Cloths", "500Rs", 4),
              dummyDataOfListView("images/mask_group_6.png", "Women T-Shirt", "Cloths", "600Rs", 1),
              dummyDataOfListView("images/mask_group_8.png", "Women T-Shirt", "Cloths", "800Rs", 3),
              dummyDataOfListView("images/mask_group_10.png","Women T-Shirt", "Cloths", "100Rs", 4),
              dummyDataOfListView("images/mask_group_11.png","Women T-Shirt", "Cloths", "1000Rs", 8),
              dummyDataOfListView("images/mask_group_12.png","Women T-Shirt", "Cloths", "5000Rs", 7),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAddressScreen()));
              },
              color: Color(0xff374ABE),
              minWidth: double.maxFinite,
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
            ),
          )
        ],
      )


    );
  }

  dummyDataOfListView(String imgSrc, String itemName, String itemCategory, String itemPrice, int itemCount) {
    return Container(
      child: Card(
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        color: Color(0xffEEEEEE),
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