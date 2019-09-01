import 'package:flutter/material.dart';

class BarberExpansionItem extends StatelessWidget {
  Map map;
  int index;
  bool last = true;
  BarberExpansionItem({this.map, this.index, this.last});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                map.keys.toList()[index].toString(),
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                map.values.toList()[index].toString(),
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        last ? Divider() : Container(),
      ],
    );
  }
}
