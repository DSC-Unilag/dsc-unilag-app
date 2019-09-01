import 'package:dsc_unilag_app/pages/home/widgets/filter_chips.dart';
import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:dsc_unilag_app/widgets/dsc_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HomePageContent();
  }
}

class _HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<_HomePageContent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double actionBoxHeight = size.height * 0.085;
    return CustomScrollView(
      slivers: <Widget>[
        DSCSliverAppBar(
          pinned: true,
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
        SliverToBoxAdapter(
          child: Container(
            height: actionBoxHeight,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 4),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                DSCFilterChip(
                  label: 'Recent',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleBlueLetterColor,
                  backgroundColor: DSCColors.kGoogleBlueBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Popular',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleYellowLetterColor,
                  backgroundColor: DSCColors.kGoogleYellowBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Web',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleRedLetterColor,
                  backgroundColor: DSCColors.kGoogleRedBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Android',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleGreenLetterColor,
                  backgroundColor: DSCColors.kGoogleGreenBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Cloud',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleRedLetterColor,
                  backgroundColor: DSCColors.kGoogleRedBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Mobile',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleYellowLetterColor,
                  backgroundColor: DSCColors.kGoogleYellowBackgroundColor,
                ),
                DSCFilterChip(
                  label: 'Firebase',
                  onPressed: () {},
                  labelColor: DSCColors.kGoogleGreenLetterColor,
                  backgroundColor: DSCColors.kGoogleGreenBackgroundColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
