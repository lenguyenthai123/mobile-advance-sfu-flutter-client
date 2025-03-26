import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sfu_video_call/src/public/styles.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        color: colorTitle,
        fontSize: 20, // Adjust font size as needed
      ),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: TextStyle(
        color: mC,
        fontSize: 20, // Adjust font size as needed
      ),
    ),
  );
}