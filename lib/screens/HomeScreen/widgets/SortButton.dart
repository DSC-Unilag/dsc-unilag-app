import 'package:flutter/material.dart';

class SortButton extends StatelessWidget {
	final String sortName;
  final MaterialColor color;

	SortButton(this.sortName, this.color);

	@override
	Widget build(BuildContext context) {
		return Container(
			height: 25,
      margin: EdgeInsets.symmetric(horizontal: 10),
			child: FlatButton(
				child: Text(this.sortName, style: TextStyle(color: this.color, fontWeight: FontWeight.w600)),
				color: this.color[50],
				focusColor: this.color,
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
				onPressed: () {
					//Do something later
				}
			)
		);
	}
}