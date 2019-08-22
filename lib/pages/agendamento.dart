import 'package:flutter/material.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  Agendamento(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Image.asset(
//          'images/logo.png',
//          scale: 30,
//        ),
//        centerTitle: true,
//      ),
//      //drawer: BarberDrawer(),
      body: Column(
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
