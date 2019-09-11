import 'package:barber_shop_app/src/agendamento/agendamento_module.dart';
import 'package:barber_shop_app/src/agendamento/agendamento_page.dart';
import 'package:barber_shop_app/src/agendamento/pages/confirmar_agendamento/confirmar_agenda_page.dart';
import 'package:barber_shop_app/src/fidelidade/fidelidade_module.dart';
import 'package:barber_shop_app/src/galeria/galeria_module.dart';
import 'package:barber_shop_app/src/galeria/galeria_page.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_drawer.dart';
import 'package:barber_shop_app/src/sobre/sobre_module.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pagecontroller = PageController();
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BarberColors.silverDark,
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
              AgendamentoModule(_pagecontroller, _calendarController),
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
