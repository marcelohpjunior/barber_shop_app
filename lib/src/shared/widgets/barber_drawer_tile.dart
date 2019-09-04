import 'package:flutter/material.dart';

class BarberDrawerTile extends StatelessWidget {
  String text;
  PageController pageController;
  int page;
  BarberDrawerTile(this.text, this.pageController, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          pageController.jumpToPage(page);
//          switch (page) {
//            case 1:
//              Navigator.of(context)
//                  .push(MaterialPageRoute(builder: (context) => Fidelidade()));
//              break;
//            case 2:
//              Navigator.of(context)
//                  .push(MaterialPageRoute(builder: (context) => Galeria()));
//              break;
//            case 3:
//              Navigator.of(context)
//                  .push(MaterialPageRoute(builder: (context) => Sobre()));
//              break;
//            default:
//              Navigator.of(context)
//                  .push(MaterialPageRoute(builder: (context) => Agendamento()));
//              break;
//          }
        },
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
                    color: pageController.page.round() == page
                        ? Colors.amber
                        : Colors.transparent,
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
}
