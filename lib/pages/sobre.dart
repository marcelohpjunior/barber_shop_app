import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
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
            child: Text("Sobre"),
          ),
        ],
      ),
    );
  }
}
