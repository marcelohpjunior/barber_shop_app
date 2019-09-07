import 'package:barber_shop_app/src/agendamento/agendamento_module.dart';
import 'package:barber_shop_app/src/agendamento/agendamento_page.dart';
import 'package:barber_shop_app/src/agendamento/pages/confirmar_agendamento/confirmar_agenda_page.dart';
import 'package:barber_shop_app/src/fidelidade/fidelidade_module.dart';
import 'package:barber_shop_app/src/galeria/galeria_module.dart';
import 'package:barber_shop_app/src/galeria/galeria_page.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_drawer.dart';
import 'package:barber_shop_app/src/sobre/sobre_module.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
>>>>>>> Stashed changes

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pagecontroller = PageController();
<<<<<<< Updated upstream
=======
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    initializeDateFormatting();
  }
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          scale: 30,
        ),
        centerTitle: true,
      ),
      drawer: BarberDrawer(_pagecontroller),
      body: Stack(
        children: <Widget>[
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pagecontroller,
            children: <Widget>[
<<<<<<< Updated upstream
              AgendamentoModule(_pagecontroller),
=======
              AgendamentoModule(_pagecontroller, _calendarController),
>>>>>>> Stashed changes
              FidelidadeModule(_pagecontroller),
              GaleriaModule(_pagecontroller),
              SobreModule(_pagecontroller),
              ConfirmarAgendamento(_pagecontroller),
            ],
          ),
        ],
      ),
    );
  }
}
