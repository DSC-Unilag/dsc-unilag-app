import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {
	final String sortName;

	TagButton(this.sortName);

	@override
	Widget build(BuildContext context) {
		return Container(
			height: 15,
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
			child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
				child: Text(this.sortName, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800, fontSize: 11)),
				color: Colors.green[50],
				focusColor: Colors.green,
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
				onPressed: () {
					//Do something later
				}
			)
		);
	}
}