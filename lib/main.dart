import 'package:barber_shop_app/login.dart';
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
