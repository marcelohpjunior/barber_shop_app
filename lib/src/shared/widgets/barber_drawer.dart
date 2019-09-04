import 'package:flutter/material.dart';

import 'barber_drawer_tile.dart';

class BarberDrawer extends StatelessWidget {
  PageController pageController;
  BarberDrawer(PageController pageController) {
    this.pageController = pageController;
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
            BarberDrawerTile("AGENDAMENTO", pageController,
                pageController.page.round() == 4 ? 4 : 0),
            BarberDrawerTile("FIDELIDADE", pageController, 1),
            BarberDrawerTile("GALERIA", pageController, 2),
            BarberDrawerTile("SOBRE NÓS", pageController, 3),
          ],
        ),
      ),
    );
  }
}
