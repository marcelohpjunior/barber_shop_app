import 'package:barber_shop_app/pages/agendamento.dart';
import 'package:barber_shop_app/widgets/bs_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          scale: 30,
        ),
        centerTitle: true,
      ),
      drawer: BsDrawer(),
      body: Center(
        child: RaisedButton(
            child: Text("Agendamento"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AgendamentoPage()));
            }),
      ),
    );
  }
}
