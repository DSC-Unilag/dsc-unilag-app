import 'package:dsc_unilag_app/screens/HomeScreen/widgets/PostCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostList extends StatelessWidget {
  final String list;

  PostList({this.list});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Recent Posts', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),   
              PostCard(
                title: 'Mobile Database Persistence',
                author: 'Geek Tutor',
                image: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg')
              ),
          ]
        )
    );
  }
}