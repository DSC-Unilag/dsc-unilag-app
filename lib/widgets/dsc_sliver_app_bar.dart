import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DSCSliverAppBar extends StatefulWidget {
  final Widget leading;
  final Widget title;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final double elevation;
  final bool pinned;
  final bool floating;
  final bool snapped;

  const DSCSliverAppBar(
      {Key key,
      this.leading,
      this.title = const _TitleDefault(),
      this.actions,
      this.bottom,
      this.elevation,
      this.pinned = false,
      this.floating = false,
      this.snapped = false})
      : super(key: key);

  @override
  _DSCSliverAppBarState createState() => _DSCSliverAppBarState();
}

class _DSCSliverAppBarState extends State<DSCSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: widget.leading,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(4.0),
              child: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg',
                  width: 18, height: 18)),
          widget.title,
        ],
      ),
      actions: widget.actions,
      centerTitle: true,
      elevation: widget.elevation,
      bottom: widget.bottom,
      pinned: widget.pinned,
      floating: widget.floating,
      snap: widget.snapped,
    );
  }
}

class _TitleDefault extends StatelessWidget {
  const _TitleDefault({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
