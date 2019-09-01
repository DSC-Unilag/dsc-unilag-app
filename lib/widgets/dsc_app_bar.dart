import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DSCAppBar extends StatelessWidget implements PreferredSizeWidget {
  DSCAppBar(
      {Key key,
      this.leading,
      this.title,
      this.actions,
      this.bottom,
      this.elevation})
      : preferredSize = Size.fromHeight(
            kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
        super(key: key);

  final Widget leading;
  final Widget title;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final double elevation;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(4.0),
              child: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg',
                  width: 18, height: 18)),
          title,
        ],
      ),
      actions: actions,
      centerTitle: true,
      elevation: elevation,
      bottom: bottom,
    );
  }
}
