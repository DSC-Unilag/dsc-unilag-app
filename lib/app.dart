import 'package:dsc_unilag_app/pages/home.dart';
import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:flutter/material.dart';

class DSCUnilagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC Unilag',
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: _kDSCTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => HomePage(),
          fullscreenDialog: false,
        );
        break;
      default:
        return null;
    }
  }
}

final ThemeData _kDSCTheme = _buildTheme();

ThemeData _buildTheme() {
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

TextTheme _buildTextTheme(TextTheme base, {Color color = kTextOnPrimaryColor}) {
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
