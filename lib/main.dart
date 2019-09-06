import 'package:flutter_web/material.dart';
import 'package:portfolio_using_flutter/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular"
      ),
      home: MyHomePage(title: 'Portfolio'),
    );
  }
}
