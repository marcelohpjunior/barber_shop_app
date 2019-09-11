import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:flutter/material.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_button.dart';

class ConfirmarAgendamento extends StatelessWidget {
  PageController pageController;
  ConfirmarAgendamento(this.pageController);

  _btnConfirmAgenda(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 40, right: 40),
        child: RaisedButton(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            color: BarberColors.golden,
            onPressed: () {},
            child: Text(
              "oláaaaaaa",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }

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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 60),
              child: Text(
                "CONFIRME SEU AGENDAMENTO",
                style: TextStyle(
                  color: BarberColors.golden,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: (MediaQuery.of(context).size.width * 0.1),
                        ),
                        alignment: Alignment.topRight,
                        child: Text(
                          "Profissional\n"
                          "Serviço\n"
                          "Data\n"
                          "Horário\n"
                          "Valor",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: (MediaQuery.of(context).size.width * 0.1)),
                        child: Text(
                          "valueeeee\n"
                          "valueee\n"
                          "valueeeeeeeee\n"
                          "valuee\n"
                          "valueeeeeee",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: BarberColors.silverDark,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BarberButton(
              onPressed: () {},
              margin: EdgeInsets.only(bottom: 30, left: 40, right: 40),
              text: Text(
                "CONFIRMAR AGENDAMENTO",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              color: BarberColors.golden,
            )
          ],
        ),
      ),
    );
  }
}