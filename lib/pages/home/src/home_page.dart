import 'package:carousel_slider/carousel_slider.dart';
import 'package:dsc_unilag_app/pages/home/widgets/filter_chips.dart';
import 'package:dsc_unilag_app/pages/home/widgets/post_card.dart';
import 'package:dsc_unilag_app/pages/home/widgets/top_category_card.dart';
import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:dsc_unilag_app/widgets/dsc_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  labelColor: DSCColors.kGoogleBlueLetterColor,
                  backgroundColor: DSCColors.kGoogleBlueBackgroundColor,
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
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
            child: Text('Top Category',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300)),
          ),
        ),
        SliverToBoxAdapter(
          child: CarouselSlider(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            pauseAutoPlayOnTouch: Duration(seconds: 10),
            height: 100.0,
            enlargeCenterPage: true,
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        // color: Colors.amber
                        ),
                    child: TopCategoryCard(
                      title:
                          'How a became a mobile developer with Firebase and Flutter',
                      author: 'Horpey Eureka',
                      image: SvgPicture.asset(
                          'assets/images/icons/ic_dsc_colored.svg',
                          width: 13,
                          height: 13),
                      onTap: () {
                        Navigator.of(context).pushNamed('/article');
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Text('Recent Post',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300)),
          ),
        ),
        SliverToBoxAdapter(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
            primary: false,
            shrinkWrap: true,
            children: <Widget>[
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Lorem Ipsum',
                image:
                    SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg'),
                onTap: () {
                  Navigator.of(context).pushNamed('/article');
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
