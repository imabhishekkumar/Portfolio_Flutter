import 'package:flutter_web/material.dart';
import 'package:portfolio_using_flutter/homepage.dart';
import 'package:portfolio_using_flutter/responsive_widget.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
          home: MyHomePage(snapshot.data)),
    );
  }
}

class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

class MyHomePage extends StatelessWidget {
  final bool darkThemeEnabled;

  MyHomePage(this.darkThemeEnabled);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      appBar: AppBar(
        backgroundColor: darkThemeEnabled
            ? Color.fromRGBO(33, 33, 33, 1)
            : Color.fromRGBO(101, 96, 237, 1),
        title: Text(
          "Abhishek",
          style: TextStyle(letterSpacing: 2, fontFamily: "Poppins"),
        ),
        actions: <Widget>[
          Switch(
              value: darkThemeEnabled,
              onChanged: bloc.changeTheme,
              activeTrackColor: Color.fromRGBO(101, 96, 237, 1),
              activeColor: Color.fromRGBO(101, 96, 237, 1))
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Intro(darkThemeEnabled),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 64),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ResponsiveWidget.isLargeScreen(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[SocialInfo()],
                  )
                : SocialInfo(),
          ),
        ],
      ),
    ));
  }
}
