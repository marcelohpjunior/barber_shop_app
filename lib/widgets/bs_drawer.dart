import 'package:flutter/material.dart';

class BsDrawer extends StatelessWidget {
  _drawerTile(String text) {
    return Material(
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, right: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: 12,
                  width: 8,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 4),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              //color: Colors.green,
              margin: EdgeInsets.only(left: 4, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 6),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 6),
                    child: Text(
                      "Marcelo Junior",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _drawerTile("AGENDAMENTO"),
            _drawerTile("FIDELIDADE"),
            _drawerTile("GALERIA"),
            _drawerTile("SOBRE NÓS"),
          ],
        ),
      ),
    );
  }
}
