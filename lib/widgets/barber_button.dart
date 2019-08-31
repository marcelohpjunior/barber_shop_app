import 'package:flutter/material.dart';

class BarberButton extends StatelessWidget {
  Text text;
  Color color;
  EdgeInsets margin;
  VoidCallback onPressed;

  BarberButton({this.text, this.color, this.margin, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: margin,
        child: RaisedButton(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          color: color,
          onPressed: onPressed,
          child: text,
        ),
      ),
    );
  }
}
//EdgeInsets.only(bottom: 10, left: 40, right: 40)
