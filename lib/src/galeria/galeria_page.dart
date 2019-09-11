import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  PageController pageController;
  Galeria(this.pageController);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        pageController.jumpToPage(0);
        return false;
      },
      child: Container(
        color: BarberColors.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("Galeria"),
            ),
          ],
        ),
      ),
    );
  }
}
