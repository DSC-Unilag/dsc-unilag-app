import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DSCAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget leading;
  final Widget title;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final double elevation;

  DSCAppBar(
      {
        Key key,
        this.leading,
        this.title,
        this.actions,
        this.bottom,
        this.elevation
      })
      : preferredSize = Size.fromHeight(
            kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
            super(key: key);

 

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
		constraints: BoxConstraints(minHeight: 150, maxHeight: 150),
		decoration: BoxDecoration(
			color: Colors.white,
			boxShadow: <BoxShadow>[
				BoxShadow(
					color: Colors.grey[300],
					blurRadius: 15.0,
					spreadRadius: 5.0,
					offset: Offset(0, 1)
				)
			]
		),
		child: Row(
			crossAxisAlignment: CrossAxisAlignment.center,
			children: <Widget>[
				Expanded(
				child: leading,
				flex: 1
				),
				Expanded(
				flex: 3,
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceAround,
					children: <Widget>[
					Container(
						padding: EdgeInsets.all(4.0),
						child: SvgPicture.asset('assets/images/icons/ic_dsc_colored.svg',
							width: 13, height: 13)
					),
					title
					]
				),
				),
				Expanded(
				flex: 1,
				child:  Row(
					mainAxisAlignment: MainAxisAlignment.start,
					children: actions
				)
				)
			]
		),
    );
  }
}
