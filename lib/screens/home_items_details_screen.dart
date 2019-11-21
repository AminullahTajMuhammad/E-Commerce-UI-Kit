import 'package:flutter/material.dart';
import 'home_screen.dart';

class HomeItemsDetailsScreens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<HomeItemsDetailsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {

            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              )
            ),
          )
        ],
      ),

      body: new Container(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            dummyDataItems("images/mask_group_5.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_6.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_8.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_10.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_11.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_12.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_5.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_6.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_10.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_11.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_12.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_5.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_6.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_10.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_11.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_12.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_5.png", "Item Price", "Item Desc "),
            dummyDataItems("images/mask_group_6.png", "Item Price", "Item Desc "),
          ],

        ),
      )
    );
  }

  Container dummyDataItems(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: <Widget>[
            Image(
                image: image
            ),
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(
                    fontSize: 12.0
                ),
              ),
            )
          ],
        ),
      ),
    );
//    return new Container(
//      margin: EdgeInsets.only(top: 5.0),
//      child: new Card(
//        elevation: 10.0,
//        child: new Column(
//          children: <Widget>[
//            new Image.asset(
//              imgSrc,
//              height: 120.0,
//              width: 200.0,
//              fit: BoxFit.cover,
//            ),
//            Padding(
//              padding: EdgeInsets.all(5.0),
//              child: Text(title),
//            ),
//            Padding(
//              padding: EdgeInsets.all(5.0),
//              child: Text(title),
//            )
//          ],
//        ),
//      ),
//    );
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.all(Radius.circular(5.0))
//      ),
//      child: Padding(
//        padding: EdgeInsets.all(10.0),
//        child: Container(
//          alignment: Alignment.center,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Flexible(
//                child: ClipRRect(
//                  borderRadius: BorderRadius.circular(10.0),
//                  child: Image(
//                    image: image,
//                    height: 250,
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
  }

}