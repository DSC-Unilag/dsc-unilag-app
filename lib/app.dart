import 'package:dsc_unilag_app/pages/index.dart';
import 'package:dsc_unilag_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DSCUnilagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        title: 'DSC Unilag',
        initialRoute: '/',
        onGenerateRoute: _getRoute,
        theme: DSCTheme.buildLightTheme(),
      ),
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
    default:
      return null;
  }
}
