import 'package:flutter/material.dart';

class BookingActionButton extends StatelessWidget {
  final Function onPressed;
  final IconData iconData;
  final Object heroTag;

  const BookingActionButton(
      {Key key, this.onPressed, this.iconData, this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: this.onPressed,
      heroTag: this.heroTag,
      backgroundColor: Colors.grey[300],
      child: Icon(this.iconData, size: 35.0, color: Theme.of(context).primaryColor)
    );
  }
}
