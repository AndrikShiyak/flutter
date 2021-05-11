import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final double width, height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton({
    this.color,
    this.height,
    this.icon,
    this.onClick,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Theme.of(context).accentColor,
        icon: icon,
        onPressed: onClick,
      ),
    );
  }
}
