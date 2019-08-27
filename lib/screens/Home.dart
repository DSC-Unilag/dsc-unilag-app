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
        children: <Widget>[

        ]
      )
    );
  }
}
