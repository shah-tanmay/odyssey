import 'package:flutter/material.dart';
import 'package:odyssey/constants.dart';

class HomeScreenHero extends StatelessWidget {
  const HomeScreenHero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          const Image(
            image: AssetImage('images/homescreenimage.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
              top: 70,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  "Where do you want to go?",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Icon(Icons.location_on, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "London Eye",
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                child: const TextField(
                  decoration: kWelcomeScreenTextFieldDecoration,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
