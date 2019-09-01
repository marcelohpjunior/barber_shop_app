import 'package:barber_shop_app/widgets/barber_button.dart';
import 'package:barber_shop_app/widgets/barber_button_login.dart';
import 'package:barber_shop_app/widgets/barber_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  Agendamento(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "AGENDE O SEU HORÁRIO",
                      style: TextStyle(
                        color: Color.fromRGBO(194, 155, 79, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  BarberExpansionTile(),
                  BarberExpansionTile(),
                  BarberExpansionTile(),
                ],
              ),
            ),
          ),
        ),
        BarberButton(
          text: Text(
            "CONTINUAR",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          margin: EdgeInsets.only(bottom: 30, left: 40, right: 40),
          onPressed: () {
            pageController.jumpToPage(4);
          },
          color: Color.fromRGBO(194, 155, 79, 1),
        ),
      ],
    );
  }
}
