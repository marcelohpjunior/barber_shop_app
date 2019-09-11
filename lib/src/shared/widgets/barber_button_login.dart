import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:flutter/material.dart';

class BarberButtonLogin extends StatelessWidget {
  Text text;
  Color color;
  Icon icon;
  bool divider;
  VoidCallback onPressed;

  BarberButtonLogin(
      {this.text,
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
                    color: BarberColors.background,
                    height: 45,
                    width: 2,
                  )
                : null,
            text
          ],
        ),
      ),
    );
    
  }
}
