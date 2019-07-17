import 'package:dsc_unilag_app/blocs/IndexBloc.dart';
import 'package:dsc_unilag_app/pages/Technology.dart';
import 'package:dsc_unilag_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: IndexBloc(),
      child: IndexPageContent(),
    );
  }
}

class IndexPageContent extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => IndexPageContentState();
}

class IndexPageContentState extends State<IndexPageContent> {
  Page _currentPage = Page.Home;

  @override
  Widget build(BuildContext context) {
    IndexBloc bloc = BlocProvider.of<IndexBloc>(context);
    return StreamBuilder(
      stream: bloc.elevationStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Scaffold(
          appBar: AppBar(
            elevation: snapshot.data,
            leading: Container(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logo/icon.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            title: Text(
              'DSC Unilag',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: <Widget>[
              FloatingActionButton(
                elevation: 0.0,
                focusElevation: 0.0,
                hoverElevation: 0.0,
                highlightElevation: 0.0,
                disabledElevation: 0.0,
                mini: true,
                child: Icon(Icons.menu),
                onPressed: () {
                  Page currentPage =
                      _currentPage == Page.Home ? Page.Technology : Page.Home;
                  bloc.changeCurrentPage(currentPage);
                },
              ),
            ],
            centerTitle: true,
          ),
          body: StreamBuilder(
              initialData: Page.Home,
              stream: bloc.indexPageStream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                _currentPage = snapshot.data;
                return _getPage(snapshot.data, context: context);
              }),
        );
      }
    );
  }

  Widget _getPage(Page page, {BuildContext context}) {
//    BlocProvider.of<IndexBloc>(context).setElevation(0.0);
    switch (page) {
      case Page.Home:
        return HomePage();
        break;
      case Page.Technology:
        return TechnologyPage();
        break;
      default:
        return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("`\\(@_@)/`"),
            Text("Not yet implemented"),
          ],
        ));
    }
  }
}
