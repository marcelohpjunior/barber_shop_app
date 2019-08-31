import 'dart:io';

import 'package:barber_shop_app/widgets/barber_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: SafeArea(
//        child: BarberDrawer(),
//      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 30),
                      child: Image.asset(
                        'images/logo.png',
                        scale: 10,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 17),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(fontSize: 17),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(fontSize: 17),
                          decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: TextStyle(fontSize: 17),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 20),
                      child: _btnEsqueceuSenha(),
                    ),
                    BarberButton(
                      text: "Entrar",
                      textColor: Colors.white,
                      color: Colors.grey,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      divider: true,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    BarberButton(
                      text: "Login com Google",
                      textColor: Colors.white,
                      color: Color.fromRGBO(205, 76, 62, 1),
                      icon: Icon(
                        MaterialCommunityIcons.getIconData("google-glass"),
                        color: Colors.white,
                      ),
                      divider: true,
                      onPressed: () {},
                    ),
                    BarberButton(
                      text: "Login com Facebook",
                      textColor: Colors.white,
                      color: Color.fromRGBO(65, 97, 157, 1),
                      icon: Icon(
                        MaterialCommunityIcons.getIconData("facebook"),
                        color: Colors.white,
                      ),
                      divider: true,
                      onPressed: () {},
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  ],
                ),
              ),
            ),
          ),
          _btnNPossuiCadastro(),
        ],
      ),
    );
  }

  _btnEsqueceuSenha() {
    return InkWell(
      onTap: () {},
      child: Text(
        "Esqueci minha senha",
        style: TextStyle(),
      ),
    );
  }

  _btnNPossuiCadastro() {
    return Platform.isIOS
        ? SafeArea(
            child: SizedBox(
              height: 40,
              width: double.maxFinite,
              child: FlatButton(
                color: Colors.grey,
                child: Text(
                  "Não possui cadastro? Clique aqui",
                ),
                onPressed: () {},
              ),
            ),
          )
        : SizedBox(
            height: 40,
            width: double.maxFinite,
            child: FlatButton(
              color: Colors.grey,
              child: Text(
                "Não possui cadastro? Clique aqui",
              ),
              onPressed: () {},
            ),
          );
  }
}
