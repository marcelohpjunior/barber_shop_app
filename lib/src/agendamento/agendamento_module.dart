import 'package:barber_shop_app/src/agendamento/agendamento_page.dart';
import 'package:barber_shop_app/src/agendamento/pages/confirmar_agendamento/confirmar_agenda_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:calendar_widget/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendamentoModule extends ModuleWidget {
  PageController _pagecontroller;
  CalendarController calendarController;
  AgendamentoModule(this._pagecontroller, this.calendarController);

  @override
  List<Bloc> get blocs => [
        Bloc((i) => ConfirmarAgendaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Agendamento(_pagecontroller, calendarController);

  static Inject get to => Inject<AgendamentoModule>.of();
}
