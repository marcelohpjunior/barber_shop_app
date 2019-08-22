import 'package:barber_shop_app/pages/agendamento.dart';
import 'package:barber_shop_app/pages/confirmar-agenda.dart';
import 'package:barber_shop_app/pages/fidelidade.dart';
import 'package:barber_shop_app/pages/galeria.dart';
import 'package:barber_shop_app/pages/sobre.dart';
import 'package:barber_shop_app/widgets/barber_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pagecontroller = PageController();

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
        drawer: BarberDrawer(_pagecontroller),
        body: Stack(
          children: <Widget>[
            PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pagecontroller,
              children: <Widget>[
                Agendamento(_pagecontroller),
                Fidelidade(_pagecontroller),
                Galeria(_pagecontroller),
                Sobre(_pagecontroller),
                ConfirmarAgendamento(_pagecontroller),
              ],
            ),
          ],
        ));
  }
}
