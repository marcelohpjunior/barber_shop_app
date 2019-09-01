import 'package:barber_shop_app/widgets/barber_expansion_item.dart';
import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

class BarberExpansionTile extends StatefulWidget {
  @override
  _BarberExpansionTileState createState() => _BarberExpansionTileState();
}

class _BarberExpansionTileState extends State<BarberExpansionTile> {
  static Map map = {'test': 'teste1', 'olá': 'mundo'};

  @override
  Widget build(BuildContext context) {
    return Container(
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
        defaultTrailingIconColor: Color.fromRGBO(194, 155, 79, 1),
        initiallyExpanded: true,
        title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Testando",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        children: <Widget>[
          BarberExpansionItem(
            map: map,
            index: 0,
            last: false,
          ),
          BarberExpansionItem(
            map: map,
            index: 1,
            last: true,
          )
        ],
      ),
    );
  }
}
