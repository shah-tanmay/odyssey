import 'package:flutter/material.dart';
import 'package:odyssey/constants.dart';

class HomeScreenStory extends StatelessWidget {
  final String name;
  final AssetImage image;
  const HomeScreenStory({
    required this.name,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor, width: 2),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: image,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
