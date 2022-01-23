import 'dart:async';

import 'package:flutter/material.dart';
import 'package:odyssey/constants.dart';
import 'package:odyssey/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(const Duration(seconds: 2),
        () => {Navigator.pushNamed(context, HomeScreen.id)});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFDB1944),
                Color(0xFFAB033E),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  text: const TextSpan(
                      text: "T",
                      style: TextStyle(
                        fontSize: 57,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "HE",
                          style: TextStyle(fontSize: 40),
                        ),
                      ]),
                ),
                RichText(
                  text: const TextSpan(
                      text: "O",
                      style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "DYSSEY",
                          style: TextStyle(fontSize: 60, letterSpacing: 6.0),
                        ),
                      ]),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "WANDER",
                        style: kWelcomeScreenStyle,
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Text("EXPLORE", style: kWelcomeScreenStyle),
                      VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Text("DISCOVER", style: kWelcomeScreenStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
