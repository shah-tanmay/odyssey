import 'package:flutter/material.dart';
import 'package:odyssey/screens/home_screen.dart';
import 'package:odyssey/screens/welcome_screen.dart';

void main() {
  runApp(
    const Odyssey(),
  );
}

class Odyssey extends StatelessWidget {
  const Odyssey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
