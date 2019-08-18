import 'package:barber_shop_app/widgets/bs_drawer.dart';
import 'package:flutter/material.dart';

class ConfirmarAgendamento extends StatefulWidget {
  @override
  _ConfirmarAgendamentoState createState() => _ConfirmarAgendamentoState();
}

class _ConfirmarAgendamentoState extends State<ConfirmarAgendamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          scale: 30,
        ),
        centerTitle: true,
      ),
      drawer: BsDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Confirmar agendamento"),
          ),
        ],
      ),
    );
  }
}
