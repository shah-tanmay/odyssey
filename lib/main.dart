import 'package:flutter/material.dart';

void main() {
  runApp(
    const Odyssey(),
  );
}

class Odyssey extends StatelessWidget {
  const Odyssey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Text(
            "Hello",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
