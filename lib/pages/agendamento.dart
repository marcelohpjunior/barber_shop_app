import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  Agendamento(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Agendamento"),
          ),
          RaisedButton(
            child: Text("Confirmar agendamento"),
            onPressed: () {
              pageController.jumpToPage(4);
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 20),
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
            child: GroovinExpansionTile(
              initiallyExpanded: true,

              title: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "Testando",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              children: <Widget>[
                Divider(),
                Text(
                  "teste1",
                  textAlign: TextAlign.right,
                ),
                Divider(),
                Text("teste2"),
                Divider(),
                Text("teste3"),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
