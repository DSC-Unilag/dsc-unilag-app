import 'package:dsc_unilag_app/pages/article/widget/post_card.dart';
import 'package:dsc_unilag_app/widgets/dsc_sliver_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _ArticlePageContent();
  }
}

class _ArticlePageContent extends StatefulWidget {
  @override
  _ArticlePageContentState createState() => _ArticlePageContentState();
}

class _ArticlePageContentState extends State<_ArticlePageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          DSCSliverAppBar(
            pinned: true,
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
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Text(
                'Android 10: Google completely changes look of mobile operating system.',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/diversity.png',
                      // TODO
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.alarm),
                          Text('10 minutes agos'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 147.0,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Developer Student Club, Unilag',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Published on Jan 1, 2022',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.android),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.info),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.devices),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Text(
                """
               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat facilisis sapien, in posuere nisl. Quisque accumsan venenatis quam consequat interdum. Vivamus a purus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus luctus, quam vitae eleifend laoreet, nibh purus semper sapien, at condimentum sapien odio a orci. Donec rutrum augue imperdiet luctus consequat. Pellentesque a nibh at turpis vestibulum pretium ac quis purus. Nam commodo, lectus sit amet pretium blandit, dui risus dapibus erat, sit amet volutpat massa orci ac leo.

Ut lacinia dignissim finibus. Proin auctor accumsan est a pulvinar. Integer sit amet congue mauris. Nam sagittis dui ultrices est sodales elementum. Phasellus ut neque nec nunc porta tincidunt ac vel tortor. Suspendisse vestibulum elit ut dapibus pulvinar. Integer euismod risus in fringilla varius. Duis a est eu nunc tincidunt tincidunt. Vestibulum lobortis nisi nisi, ac tempor est tincidunt non. Aliquam bibendum tincidunt quam eget hendrerit. Pellentesque vel purus nisi. Curabitur vitae ultricies mi. Proin sed scelerisque lectus. """,
                style: TextStyle(
                    fontSize: 16.0,
                    wordSpacing: 2,
                    letterSpacing: 1.5,
                    height: 1.2),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              leading: SizedBox(
                width: 72.0,
                height: 72.0,
                child: Image.asset('assets/images/diversity.png'),
              ),
              title: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec'),
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
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
                PostCard(
                  title: 'Mobile Database Persistence',
                  author: 'Lorem Ipsum',
                  image: SvgPicture.asset(
                      'assets/images/icons/ic_dsc_colored.svg'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/article');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
