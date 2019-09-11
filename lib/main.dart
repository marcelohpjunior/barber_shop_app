import 'package:barber_shop_app/src/login/login_page.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(BarberShopApp());

class BarberShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BarberShopApp",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: BarberColors.silver,
      // ),
      home: Login(),
    );
  }
}
