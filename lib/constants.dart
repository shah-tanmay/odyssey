import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFD91843);
const kWelcomeScreenStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const kWelcomeScreenTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10),
  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 22),
  filled: true,
  fillColor: Colors.white,
  hintText: "Search",
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  hintStyle: TextStyle(color: Colors.grey),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
);

const kHomeScreenOptionsUnSelected = TextStyle(
  fontSize: 14,
  color: Color(0xFF666462),
);

const kHomeScreenSubtitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Color(0xFF4F4F4F),
);
