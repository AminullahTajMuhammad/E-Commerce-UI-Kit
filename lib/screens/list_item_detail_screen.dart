import 'package:flutter/material.dart';
import 'add_to_cart_screen.dart';
import 'create_address_screen.dart';

class ItemDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context)
    );
  }

  Widget initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black,),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Item Details", style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          )
        ],
        backgroundColor: Colors.white,
        elevation: 5.0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            elevation: 5.0,
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Image(
                    image: itemImage(),
                    fit: BoxFit.cover,
                  ),
                )
            ),
          ), // Image Card Widget

          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              "Black turtle neck top",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
          ),  // Title Container Widgets

          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              "450 Rs",
              style: TextStyle(
                color: Color(0xff7990DD),
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),  // Title Container Widgets

          Container(
            padding: EdgeInsets.only(left: 25.0, top: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  child: Text("4.5", style: TextStyle(color: Colors.white),),
                  elevation: 5.0,
                  color: Color(0xff7990DD),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),

                Container(
                  child: Text(
                    "Very Good",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0
                    ),
                  ),
                  padding: EdgeInsets.only(left: 20.0),
                ),

                Container(
                  child: Text(
                    "49 Reviews",
                    style: TextStyle(
                      color: Color(0xff7990DD),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  margin: EdgeInsets.only(left: 30.0),
                ),
              ],
            )
          ),  // Rating Container

          Container(
            padding: EdgeInsets.only(left: 25.0, top: 20.0),
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 17.0
              ),
            ),
          ), // Description Container

          Container(
            padding: EdgeInsets.only(left: 25.0, top: 10.0),
            child: Text(
              "A wonderful serenit has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart",
              style: TextStyle(
                  fontSize: 15.0
              ),
            ),
          ), // Description
          
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Select Size",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                ),

                Text(
                  "Select Color",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),  // Select Size and Color Container

          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  color: Color(0xff7990DD),
                  child: Text("S", style: TextStyle(color: Colors.white),),
                  height: 45.0,
                  minWidth: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Color(0xff7990DD),
                  child: Text("M", style: TextStyle(color: Colors.white),),
                  height: 45.0,
                  minWidth: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Color(0xff7990DD),
                  child: Text("L", style: TextStyle(color: Colors.white),),
                  height: 45.0,
                  minWidth: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                ),
                MaterialButton(
                  onPressed: () {
                  },
                  color: Color(0xff7990DD),
                  child: Text("XXL", style: TextStyle(color: Colors.white),),
                  height: 45.0,
                  minWidth: 45.0,
                ),
              ],
            ),
          ),  // Select Size and Color Container

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: MaterialButton(
                    onPressed: () {
                      // So this code will push a new widget in stack
                      var route = MaterialPageRoute(builder: (context) => CartScreen());
                      Navigator.of(context).push(route);
                    },
                    color: Color(0xffEEEEEE),
                    child: Text("Add to cart", style: TextStyle(color: Colors.black),),
                    height: 45.0,
                    minWidth: 150.0,
                  ),
                ),
                Align(
                  alignment: FractionalOffset.bottomRight,
                  child: MaterialButton(
                    onPressed: () {
                      var route = MaterialPageRoute(builder: (context) => CreateAddressScreen());
                      Navigator.push(context, route);
                    },
                    color: Color(0xff7990DD),
                    child: Text("Buy Now", style: TextStyle(color: Colors.white),),
                    height: 45.0,
                    minWidth: 150.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ImageProvider itemImage() {
    AssetImage image = AssetImage("images/mask_group_10.png");
    return image;
  }
}