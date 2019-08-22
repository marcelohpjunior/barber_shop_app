import 'package:barber_shop_app/widgets/barber_drawer.dart';
import 'package:flutter/material.dart';

class Galeria extends StatefulWidget {
  @override
  _GaleriaState createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
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
//     drawer: BarberDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Galeria"),
          ),
        ],
      ),
    );
  }
}
