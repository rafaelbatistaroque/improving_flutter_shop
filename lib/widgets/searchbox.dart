import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/utils/fontStyle.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.12),
              offset: Offset(0, 10),
              blurRadius: 30)
        ],
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 12),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Pesquisar...",
                hintStyle: searchBarStyle,
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    );
  }
}
