import 'package:barber_shop_app/widgets/barber_button.dart';
import 'package:barber_shop_app/widgets/barber_button_login.dart';
import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  Agendamento(this.pageController);

  _expansionTile() {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: GroovinExpansionTile(
        defaultTrailingIconColor: Color.fromRGBO(194, 155, 79, 1),
        initiallyExpanded: true,
        title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Testando",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "teste1L",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "teste1R",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "teste2L",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "teste2R",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "teste3L",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "teste3R",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "teste4L",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "teste4R",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

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
                  _expansionTile(),
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
