import 'package:flutter/material.dart';

class DSCFilterChip extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const DSCFilterChip(
      {Key key,
      @required this.label,
      this.labelColor,
      this.backgroundColor,
      @required this.onPressed})
      : assert(label != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ActionChip(
        label: Text(label),
        onPressed: onPressed,
        pressElevation: 2.0,
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        labelStyle: TextStyle(color: labelColor, fontWeight: FontWeight.w600),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
