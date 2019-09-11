import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

import 'barber_colors.dart';
import 'barber_expansion_item.dart';

class BarberExpansionTile extends StatefulWidget {
  @override
  _BarberExpansionTileState createState() => _BarberExpansionTileState();
}

class _BarberExpansionTileState extends State<BarberExpansionTile> {
  static Map map = {'test': 'teste1', 'olá': 'mundo'};
  String _titleExpansion = "Escolha o serviço";

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
        defaultTrailingIconColor: BarberColors.golden,
        initiallyExpanded: true,
        title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            _titleExpansion,
            style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                _titleExpansion = map.keys.toList()[0].toString();
              });
            },
            child: BarberExpansionItem(
              map: map,
              index: 0,
              last: false,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _titleExpansion = map.keys.toList()[1].toString();
              });
            },
            child: BarberExpansionItem(
              map: map,
              index: 1,
              last: true,
            ),
          ),
        ],
      ),
    );
  }
}
