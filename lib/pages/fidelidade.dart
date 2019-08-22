import 'package:flutter/material.dart';

class Fidelidade extends StatefulWidget {
  @override
  _FidelidadeState createState() => _FidelidadeState();
}

class _FidelidadeState extends State<Fidelidade> {
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
            child: Text("Fidelidade"),
          ),
        ],
      ),
    );
  }
}
