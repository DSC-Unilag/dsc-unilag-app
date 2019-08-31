import 'package:flutter/material.dart';

class TopCategoryCard extends StatelessWidget {

  final String title;
  final String author;
  final Widget image;

  TopCategoryCard({this.title, this.author, this.image});

  @override
  Widget build (BuildContext context) {
    return Container(
      width: 280,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: this.image,
            ),
            title: Container(
              child: Text(this.title, style: TextStyle(fontWeight: FontWeight.w600)),
              margin: EdgeInsets.only(bottom: 10)
            ),
            subtitle: Text(this.author, style: TextStyle(color: Colors.red)),
            isThreeLine: true,
        ),
      )
    );
  }
}