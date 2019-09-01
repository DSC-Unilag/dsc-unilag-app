import 'package:dsc_unilag_app/pages/home/widgets/filter_chips.dart';
import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String author;
  final Widget image;
  final VoidCallback onTap;

  PostCard({this.title, this.author, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 280,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            isThreeLine: true,
            leading: Container(
              width: 50,
              height: 50,
              child: this.image,
            ),
            title: Container(
                child: Text(this.title,
                    style: TextStyle(fontWeight: FontWeight.w600)),
                margin: EdgeInsets.only(bottom: 20)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(this.author, style: TextStyle(color: Colors.red)),
                ),
                Row(children: <Widget>[
                  //tags
                  DSCFilterChip(
                    label: 'Web',
                    onPressed: () {},
                    labelColor: DSCColors.kGoogleRedLetterColor,
                    backgroundColor: DSCColors.kGoogleRedBackgroundColor,
                  ),
                  DSCFilterChip(
                    label: 'Firebase',
                    onPressed: () {},
                    labelColor: DSCColors.kGoogleGreenLetterColor,
                    backgroundColor: DSCColors.kGoogleGreenBackgroundColor,
                  ),
                  DSCFilterChip(
                    label: 'Flutter',
                    onPressed: () {},
                    labelColor: DSCColors.kGoogleBlueLetterColor,
                    backgroundColor: DSCColors.kGoogleBlueBackgroundColor,
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
