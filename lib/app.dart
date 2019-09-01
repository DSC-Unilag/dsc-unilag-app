import 'package:dsc_unilag_app/screens/HomeScreen/index.dart';
import 'package:dsc_unilag_app/pages/article/article.dart';
import 'package:dsc_unilag_app/pages/index.dart';
import 'package:dsc_unilag_app/themes/themes.dart';
import 'package:flutter/material.dart';

class DSCUnilagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC Unilag',
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: DSCTheme.buildLightTheme(),
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) => IndexPage(),
        fullscreenDialog: false,
      );
      break;
    case '/article':
      return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) => ArticlePage(),
        fullscreenDialog: false,
      );
      break;
    default:
      return throw new Exception('Invalid Route');
  }
}
