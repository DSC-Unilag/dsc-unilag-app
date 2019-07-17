import 'package:dsc_unilag_app/blocs/IndexBloc.dart';
import 'package:dsc_unilag_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePageContent();
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  void _scrollListener(IndexBloc bloc) {
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
//      bloc.setElevation(0.0);
      bloc.setAppBarElevation(0.0);
    } else {
//      bloc.setElevation(4.0);
      bloc.setAppBarElevation(4.0);
    }
  }

  TextSpan _buildText({@required String text, Color color}) {
    return TextSpan(text: '$text', style: TextStyle(color: color));
  }

  @override
  Widget build(BuildContext context) {
    IndexBloc indexBloc = BlocProvider.of<IndexBloc>(context);
    _scrollController.addListener(() => _scrollListener(indexBloc));
    ThemeData themeData = Theme.of(context);
    return Center(
      child: ListView(
        controller: _scrollController,
        children: <Widget>[
          Image.asset(
            'assets/images/diversity.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 14.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Developer Student Club\nUniversity of Lagos.',
              style: themeData.textTheme.headline.copyWith(
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              text: TextSpan(
                text: 'Developer Student Clubs is a ',
                style: themeData.textTheme.body1
                    .copyWith(fontSize: 16.0, height: 1.5),
                children: <TextSpan>[
                  _buildText(text: 'G', color: kFirstLetter),
                  _buildText(text: 'o', color: kThirdLetter),
                  _buildText(text: 'o', color: kSecondLetter),
                  _buildText(text: 'g', color: kFirstLetter),
                  _buildText(text: 'l', color: kFourthLetter),
                  _buildText(text: 'e', color: kThirdLetter),
                  _buildText(
                      text:
                          ' Developers program for university students to learn '),
                  _buildText(text: 'mobile ', color: kSecondLetter),
                  _buildText(
                    text: 'add ',
                  ),
                  _buildText(
                      text: 'web development skills,  ', color: kFirstLetter),
                  _buildText(
                      text: 'design thinking skills ', color: kThirdLetter),
                  _buildText(
                    text: 'add ',
                  ),
                  _buildText(text: 'leadership skills ', color: kFourthLetter),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          FeatureCardWidget(
            icon: IcoFontIcons.rocketAlt1,
            color: kFirstLetter,
            featureTitle: 'Concept of DSC',
            featureDescription:
                'The DSC program is a grassroots channel through which Google provides development skills, mobile and web development skills for students, towards employability.',
          ),
          FeatureCardWidget(
            icon: IcoFontIcons.lightBulb,
            color: kFourthLetter,
            featureTitle: 'Why DSC?',
            featureDescription:
                'For students to learn development skills, solve problems through technology and inspire them to be world class developers and changemakers.',
          ),
          FeatureCardWidget(
            icon: IcoFontIcons.usersSocial,
            color: kThirdLetter,
            featureTitle: 'Target audience',
            featureDescription:
                'DSC activities are targeted at University students and any others including faculty members who want to learn development skills & work to solve real-life problems.',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Opportunities DSCs provide students with',
                    textAlign: TextAlign.center,
                    style: themeData.textTheme.headline.copyWith(
                      fontSize: 28,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 50.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    leading: Icon(IcoFontIcons.check),
                    subtitle: Text(
                      'Grow their knowledge on developer technologies and more through peer to peer workshops and events.',
                      style: themeData.textTheme.body1.copyWith(
                        fontSize: 14.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    leading: Icon(IcoFontIcons.check),
                    subtitle: Text(
                      'Gain relevant industry experience by solving problems for local organizations with technology based solutions.',
                      style: themeData.textTheme.body1.copyWith(
                        fontSize: 14.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    leading: Icon(IcoFontIcons.check),
                    subtitle: Text(
                      'Showcase their prototypes and solutions to their local community and industry leaders.',
                      style: themeData.textTheme.body1.copyWith(
                        fontSize: 14.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    leading: Icon(IcoFontIcons.check),
                    subtitle: Text(
                      'Getting inspiration to become world-class developers and changemakers from sharing others\' success stories.',
                      style: themeData.textTheme.body1.copyWith(
                        fontSize: 14.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCardWidget extends StatelessWidget {
  const FeatureCardWidget(
      {Key key,
      @required this.icon,
      @required this.featureTitle,
      @required this.featureDescription,
      @required this.color})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String featureTitle;
  final String featureDescription;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      height: 255.0,
      margin: EdgeInsetsDirectional.only(bottom: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 41.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  '$featureTitle',
                  style: themeData.textTheme.headline.copyWith(
                    fontSize: 14.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 14.0),
                child: Text(
                  '$featureDescription',
                  style: themeData.textTheme.body1.copyWith(
                    fontSize: 14.0,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
