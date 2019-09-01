import 'package:dsc_unilag_app/widgets/TagButtons.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String author;
  final Widget image;

  PostCard({this.title, this.author, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 280,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: ListTile(
            contentPadding: EdgeInsets.all(10),
            isThreeLine: true,
            leading: Container(
              width: 50,
              height: 50,
              child: this.image,
            ),
            title: Container(
              child: Text(this.title, style: TextStyle(fontWeight: FontWeight.w600)),
              margin: EdgeInsets.only(bottom: 20)
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(this.author, style: TextStyle(color: Colors.red)),
                ),
                Row(
                  children: <Widget>[
                    //tags
                    TagButton('Web'),
                    TagButton('Firebase'),  
                  ]
                )
              ]
            )
          ),
      )
    );
  }
}