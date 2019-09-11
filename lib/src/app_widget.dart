import 'package:barber_shop_app/src/login/login_module.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:flutter/material.dart';
import 'package:barber_shop_app/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BarberShopApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: BarberColors.silver,
      ),
      home: LoginModule(),
    );
  }
}
