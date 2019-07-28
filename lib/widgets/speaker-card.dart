import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/utils/fontStyle.dart';

class SpeakerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 6),
                  blurRadius: 6,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.only(left: 22, top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Infinity", style: productTitleStyle),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Black Bluetooth modernos e \ncom qualidade de som incrível",
                    style: speakerDescStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
