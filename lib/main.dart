import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/pages/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Shop",
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: TabsPage(),
      ),
    );
  }
}
