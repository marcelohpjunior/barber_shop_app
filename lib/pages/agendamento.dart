import 'package:barber_shop_app/widgets/bs_drawer.dart';
import 'package:flutter/material.dart';

import 'confirmar-agenda.dart';

class AgendamentoPage extends StatefulWidget {
  @override
  _AgendamentoPageState createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
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
      body: Center(
        child: RaisedButton(
          child: Text("Tela confirmar agendamento"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfirmarAgendamento()));
          },
        ),
      ),
    );
  }
}
