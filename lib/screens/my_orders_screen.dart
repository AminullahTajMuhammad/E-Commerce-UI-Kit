import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders Screen",
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

            trailing: Container(
              child: Icon(
                Icons.refresh,
                size: 30,
                color: Color(0xff374ABE),
              ),
            ),
          ),
        )
    );
  }
}