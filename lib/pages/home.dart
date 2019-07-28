import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/utils/fontStyle.dart';
import 'package:improving_flutter_shop/widgets/searchbox.dart';
import 'package:improving_flutter_shop/widgets/product-phone.dart';
import 'package:improving_flutter_shop/widgets/speaker-card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6Fb),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Shop", style: headingStyle),
            ),
            SizedBox(height: 15),
            SearchBox(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Headphones", style: headingStyle),
            ),
            SizedBox(height: 10),
            ProductPhone(),
            Container(
              width: double.infinity,
              height: 160,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text("Speakers", style: productTitleStyle),
                  ),
                  SpeakerCard(),
                  Positioned(
                    right: 10,
                    top: 5,
                    child: Image.asset(
                      "assets/speaker.png",
                      fit: BoxFit.cover,
                      width: 130,
                      height: 80,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
