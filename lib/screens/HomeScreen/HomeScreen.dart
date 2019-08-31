import 'package:dsc_unilag_app/widgets/DSCAppBar.dart';
import 'package:dsc_unilag_app/screens/HomeScreen/widgets/SortButton.dart';
import 'package:dsc_unilag_app/screens/HomeScreen/widgets/TopCategoryCard.dart';
import 'package:dsc_unilag_app/screens/HomeScreen/widgets/PostList.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

// import 'package:flutter/services.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // statusBarColor: Colors.white
    // ));
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
        body: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                     Container(
                         height: 23,
                         margin: EdgeInsets.only(bottom: 5),
                         child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                                //sort buttons
                                SortButton('Recent', Colors.blue),
                                SortButton('Popular', Colors.yellow),
                                SortButton('Web', Colors.red),
                                SortButton('Cloud', Colors.green),
                            ]
                        )  
                    ),
                    Expanded(
                        child: ListView(
                            children: <Widget>[
                                //Top Categories
                                Container(
                                    margin: EdgeInsets.only(top: 25, bottom: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text('Top Category', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
                                ),
                                Container(
                                    // height: 100,
                                    child: CarouselSlider(
                                        autoPlay: true,
                                        autoPlayInterval: Duration(seconds: 3),
                                        pauseAutoPlayOnTouch: Duration(seconds: 10),
                                        height: 100.0,
                                        enlargeCenterPage: true,
                                        items: [1,2,3].map((i) {
                                            return Builder(
                                                builder: (BuildContext context) {
                                                    return Container(
                                                        width: MediaQuery.of(context).size.width,
                                                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                        decoration: BoxDecoration(
                                                            // color: Colors.amber
                                                        ),
                                                        child: TopCategoryCard(
                                                            title: 'How a became a mobile developer with Firebase and Flutter',
                                                            author: 'Horpey Eureka',
                                                            image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg', width: 13, height: 13)
                                                        ),
                                                    );
                                                },
                                            );
                                        }).toList(),
                                    )
                                ),
                                PostList(list: 'recent_post')
                            ]
                        )
                    )
                ]
            )
        )
      )
    );
  }
}
