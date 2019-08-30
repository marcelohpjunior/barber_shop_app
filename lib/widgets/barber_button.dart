import 'package:flutter/material.dart';

class BarberButton extends StatelessWidget {
  String text;
  Color textColor;
  Color color;
  Icon icon;
  bool divider;
  VoidCallback onPressed;

  BarberButton(
      {this.text,
      this.textColor,
      this.color,
      this.icon,
      this.divider,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 60),
      alignment: Alignment.center,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        color: color,
        onPressed: onPressed,
        child: Row(
          children: <Widget>[
            icon,
            divider
                ? Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Theme.of(context).backgroundColor,
                    height: 45,
                    width: 2,
                  )
                : null,
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
    ;
  }
}
