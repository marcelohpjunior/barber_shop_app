import 'package:flutter/material.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  Agendamento(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Agendamento"),
          ),
          RaisedButton(
              child: Text("Confirmar agendamento"),
              onPressed: () {
                pageController.jumpToPage(4);
              }),
        ],
      ),
    );
  }
}
