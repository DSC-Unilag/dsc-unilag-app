import 'package:flutter/material.dart';

class TechnologyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TechnologyPageContent();
  }
}

class TechnologyPageContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TechnologyPageContentState();
  }
}

class TechnologyPageContentState extends State<TechnologyPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Technology'),
    );
  }
}