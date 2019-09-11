import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'barber_colors.dart';
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
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4, left: 4),
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: BarberColors.golden,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 150,

                        //color: Colors.green,

                        margin: EdgeInsets.only(left: 20, top: 4),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 6),
                              child: CircleAvatar(
                                backgroundColor: BarberColors.silver,
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
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebookSquare,
                        color: BarberColors.blackOnyx,
                      ),
                      iconSize: 30,
                      onPressed: () async {
                        const url = 'https://www.facebook.com/marcelohpjunior';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: BarberColors.blackOnyx,
                      ),
                      iconSize: 30,
                      onPressed: () async {
                        const url = 'https://www.instagram.com/marcelohpjunior';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 15,
                width: double.maxFinite,
                color: BarberColors.golden,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
