import 'package:dsc_unilag_app/blocs/IndexBloc.dart';
import 'package:dsc_unilag_app/screens/Technology.dart';
import 'package:dsc_unilag_app/screens/home.dart';
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
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: snapshot.data,
              leading: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  //Do something
                }
              ), 
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/logo/icon.png',
                      width: 29,
                      height: 29
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    'DSC Unilag',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ]
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.brightness_3),
                  onPressed: () {
                    //Do something
                  }
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    //Do something
                  }
                )
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
          )
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
