import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static OutlineInputBorder _border(borderColor) => OutlineInputBorder(
    borderSide: BorderSide(color: borderColor),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(15),
      focusedBorder: _border(Pallete.gradient2),
      enabledBorder: _border(Pallete.borderColor),
    ),
  );
}
