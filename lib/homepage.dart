import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'package:portfolio_using_flutter/responsive_widget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 25, 48, 1),
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text(
                      "contact@abhishekkumar.dev",
                      style: TextStyle(fontSize: 17),
                    ),
                    accountName: Text(
                      "Abhishek Kumar",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                            "About Me",
                            style: TextStyle(fontSize: 17),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.receipt),
                          title: Text(
                            "Projects",
                            style: TextStyle(fontSize: 17),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.work),
                          title: Text(
                            "Work",
                            style: TextStyle(fontSize: 17),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 48, 74, 1),
        title: Text(
          "Abhishek.",
          style: TextStyle(letterSpacing: 3),
        ),
        actions: ResponsiveWidget.isLargeScreen(context)
            ? <Widget>[
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      "About",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      "Projects",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      "Contact",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                  onTap: () {},
                )
              ]
            : null,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Intro(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 64),
          ),
          ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[SocialInfo()],
                )
              : SocialInfo(),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const CustomButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.amber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class Intro extends StatelessWidget {
  List<Widget> introWidgets() {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Hi, my name's",
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Color.fromRGBO(100, 255, 218, 1), fontSize: 24),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Abhishek Kumar",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "I'm a mobile application developer and UX designer.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(140, 152, 176, 1),
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomButton(
              text: "Get in touch",
              color: Color.fromRGBO(100, 255, 218, 1),
              onPressed: () {
                html.window.open(
                    "https://www.quora.com/profile/Abhishek-Kumar-6304",
                    "Quora");
              },
            )),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: FlatButton(
            child: Text("Resume"),
            color: Color.fromRGBO(100, 255, 218, 1),
            textColor: Color.fromRGBO(10, 25, 48, 1),
            onPressed: () {
              html.window
                  .open("https://abhishekkumar.dev/resume.pdf", "Resume");
            },
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
        ),
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: introWidgets(),
    );
  }
}

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/github.png', height: 40),
        ),
        onTap: () {
          html.window.open("https://www.github.com/imabhishekkumar", "Github");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/linkedin.png', height: 40),
        ),
        onTap: () {
          html.window
              .open("https://www.linkedin.com/in/abhishekkumar01/", "LinkedIn");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/twitter.png', height: 40),
        ),
        onTap: () {
          html.window.open("https://twitter.com/_abhishekkumarr", "Twitter");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/medium.png', height: 40),
        ),
        onTap: () {
          html.window.open("https://medium.com/@imabhishekkumar", "Medium");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/stack-overflow.png', height: 40),
        ),
        onTap: () {
          html.window.open(
              "https://stackoverflow.com/users/9545394/abhishek-kumar",
              "Stack Overflow");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/quora.png', height: 40),
        ),
        onTap: () {
          html.window.open(
              "https://www.quora.com/profile/Abhishek-Kumar-6304", "Quora");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/facebook.png', height: 40),
        ),
        onTap: () {
          html.window
              .open("https://www.facebook.com/loading.abhishek", "Facebook");
        },
      ),
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('icons/instagram.png', height: 40),
        ),
        onTap: () {
          html.window
              .open("https://www.instagram.com/_abhishekumar_/", "Instagram");
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
        ],
      ),
      smallScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ...socialMediaWidgets(),
        ],
      ),
    );
  }
}
