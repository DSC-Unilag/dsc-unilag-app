import 'package:dsc_unilag_app/components/dsc_app_bar.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSCAppBar(
        leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        title: Text(
          'Developer Student Clubs',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_3),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
