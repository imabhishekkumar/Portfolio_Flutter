import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'package:portfolio_using_flutter/responsive_widget.dart';

class Intro extends StatelessWidget {
  final bool darkThemeEnabled;
  Intro(this.darkThemeEnabled);

  List<Widget> introWidgets() {
    return [
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 110, 8, 8),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Hello!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: darkThemeEnabled ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 34),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "I'm Abhishek Kumar from Chennai, India.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(101, 96, 237, 1),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "Poppins"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "I am passionate about building applications for mobile and web with beautiful interfaces and experiences.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: FlatButton(
          child: Text(
            "Resume",
            style: TextStyle(
                fontFamily: "Poppins",
                color: darkThemeEnabled ? Colors.black : Colors.white),
          ),
          color: Color.fromRGBO(101, 96, 237, 1),
          textColor: Colors.white,
          onPressed: () {
            html.window
                .open("https://www.abhishekkumar.dev/resume.pdf", "Resume");
          },
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: introWidgets(),
    );
  }
}

class SocialInfo extends StatelessWidget {
  Widget socialMediaWidgets() {
    return 
      Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/github.png', height: 40),
            ),
            onTap: () {
              html.window
                  .open("https://www.github.com/imabhishekkumar", "Github");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/linkedin.png', height: 40),
            ),
            onTap: () {
              html.window.open(
                  "https://www.linkedin.com/in/abhishekkumar01/", "LinkedIn");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/twitter.png', height: 40),
            ),
            onTap: () {
              html.window
                  .open("https://twitter.com/_abhishekkumarr", "Twitter");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/medium.png', height: 40),
            ),
            onTap: () {
              html.window.open("https://medium.com/@imabhishekkumar", "Medium");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
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
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/quora.png', height: 40),
            ),
            onTap: () {
              html.window.open(
                  "https://www.quora.com/profile/Abhishek-Kumar-6304", "Quora");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/facebook.png', height: 40),
            ),
            onTap: () {
              html.window.open(
                  "https://www.facebook.com/loading.abhishek", "Facebook");
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('icons/instagram.png', height: 40),
            ),
            onTap: () {
              html.window.open(
                  "https://www.instagram.com/_abhishekumar_/", "Instagram");
            },
          ),
        ],
      );

  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              socialMediaWidgets(),
            ],
          ),
        ],
      ),
      smallScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          socialMediaWidgets(),
        ],
      ),
    );
  }
}
