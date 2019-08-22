import 'package:barber_shop_app/main.dart';
import 'package:barber_shop_app/widgets/barber_drawer.dart';
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
                    _btnLogin(context),
                    _btnLoginGoogle(context),
                    _btnLoginFacebook(context),
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

  _btnLogin(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Text("Entrar"),
    );
  }

  _btnLoginGoogle(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.symmetric(horizontal: 60),
      alignment: Alignment.center,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        color: Color.fromRGBO(205, 76, 62, 1),
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              MaterialCommunityIcons.getIconData("google-glass"),
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Theme.of(context).backgroundColor,
              height: 45,
              width: 2,
            ),
            Text(
              "Login com Google",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  _btnLoginFacebook(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 30),
      padding: EdgeInsets.symmetric(horizontal: 60),
      alignment: Alignment.center,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        color: Color.fromRGBO(65, 97, 157, 1),
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              MaterialCommunityIcons.getIconData("facebook"),
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Theme.of(context).backgroundColor,
              height: 45,
              width: 2,
            ),
            Text(
              "Login com Facebook",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  _btnNPossuiCadastro() {
    return SizedBox(
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
