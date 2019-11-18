import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LunchState();
  }
}

class LunchState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  Widget initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            items("images/mask_group_5.png", "Hello World", "Hello Sub Title"),
            items("images/mask_group_5.png", "Hello World", "Hello Sub Title"),
            items("images/mask_group_5.png", "Hello World", "Hello Sub Title"),
            items("images/mask_group_5.png", "Hello World", "Hello Sub Title"),
            items("images/mask_group_5.png", "Hello World", "Hello Sub Title"),
          ],
        )
      )
    );
  }

  Container items(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 100.0,
        child: Wrap(
          children: <Widget>[
            Image(
              image: image
            ),
            ListTile(
              title: Text(title),
              subtitle: Text(subTitle),
            )
          ],
        ),
      ),
    );
  }

  Container shoppingItems(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      width: 150.0,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(imgSrc),
          subtitle: Text(title),
        ),
      )
    );
  }
}