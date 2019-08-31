import 'package:dsc_unilag_app/widgets/dsc_app_bar.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DSCAppBar(
          leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
          title: Text(
            'Developer Student Clubs',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: <Widget>[
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.brightness_3),
                onPressed: () {},
                padding: EdgeInsets.all(0),
              ),   
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
                padding: EdgeInsets.all(0)
              )
            )
          ],
        ),
      )
    );
  }
}
