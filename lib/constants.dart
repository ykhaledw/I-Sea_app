import 'package:flutter/material.dart';

Color kPrimaryColor = const Color(0xff6E9ACA);

MaterialColor kPrimaryMaterialColor = MaterialColor(
      kPrimaryColor.value, 
      <int, Color>{
        50: kPrimaryColor.withOpacity(0.1),
        100: kPrimaryColor.withOpacity(0.2),
        200: kPrimaryColor.withOpacity(0.3),
        300: kPrimaryColor.withOpacity(0.4),
        400: kPrimaryColor.withOpacity(0.5),
        500: kPrimaryColor,
        600: kPrimaryColor.withOpacity(0.6),
        700: kPrimaryColor.withOpacity(0.7),
        800: kPrimaryColor.withOpacity(0.8),
        900: kPrimaryColor.withOpacity(0.9),
      },
    );