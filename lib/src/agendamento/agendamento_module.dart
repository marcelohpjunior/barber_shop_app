import 'package:barber_shop_app/src/agendamento/agendamento_page.dart';
import 'package:barber_shop_app/src/agendamento/pages/confirmar_agendamento/confirmar_agenda_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
<<<<<<< Updated upstream
import 'package:flutter/material.dart';

class AgendamentoModule extends ModuleWidget {
  PageController _pagecontroller;
  AgendamentoModule(this._pagecontroller);
=======
import 'package:calendar_widget/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendamentoModule extends ModuleWidget {
  PageController _pagecontroller;
  CalendarController calendarController;
  AgendamentoModule(this._pagecontroller, this.calendarController);
>>>>>>> Stashed changes

  @override
  List<Bloc> get blocs => [
        Bloc((i) => ConfirmarAgendaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
<<<<<<< Updated upstream
  Widget get view => Agendamento(_pagecontroller);
=======
  Widget get view => Agendamento(_pagecontroller, calendarController);
>>>>>>> Stashed changes

  static Inject get to => Inject<AgendamentoModule>.of();
}
