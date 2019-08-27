import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:flutter/material.dart';

class DSCTheme {
  static ThemeData buildLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: kPrimaryColor,
      primaryColorDark: kPrimaryDarkColor,
      primaryColorLight: kPrimaryDarkColor,
      accentColor: kSecondaryColor,
      textSelectionColor: kSecondaryLightColor,
      textSelectionHandleColor: kSecondaryDarkColor,
      scaffoldBackgroundColor: kBackgroundColor,
      cardColor: kBackgroundColor,
      errorColor: kErrorColor,
      appBarTheme: base.appBarTheme.copyWith(brightness: Brightness.light),
      primaryIconTheme: base.iconTheme.copyWith(
        color: kSecondaryColor,
      ),
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kSecondaryColor,
        textTheme: ButtonTextTheme.normal,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      accentTextTheme:
          _buildTextTheme(base.textTheme, color: kTextOnSecondaryColor),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base,
      {Color color = kTextOnPrimaryColor}) {
    return base
        .copyWith(
          headline: base.headline.copyWith(
            fontWeight: FontWeight.w500,
          ),
          title: base.title.copyWith(fontSize: 18.0),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
          body2: base.body2.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        )
        .apply(
          fontFamily: 'Roboto',
          displayColor: color,
          bodyColor: color,
        );
  }
}
