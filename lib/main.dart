import 'package:barber_shop_app/login.dart';
import 'package:barber_shop_app/pages/agendamento.dart';
import 'package:flutter/material.dart';

void main() => runApp(BarberShopApp());

class BarberShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BarberShopApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Login(),
    );
  }
}

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
      drawer: SafeArea(
        child: Drawer(
          child: Center(
            child: Text("teste"),
          ),
        ),
      ),
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
