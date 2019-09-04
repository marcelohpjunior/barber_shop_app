import 'package:flutter/material.dart';

class Fidelidade extends StatelessWidget {
  PageController pageController;
  Fidelidade(this.pageController);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          pageController.jumpToPage(0);
          return false;
        },
        child: Scaffold(
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
                child: Text("Fidelidade"),
              ),
            ],
          ),
        ));
  }
}
