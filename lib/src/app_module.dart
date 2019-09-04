import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:barber_shop_app/src/app_widget.dart';
import 'package:barber_shop_app/src/app_bloc.dart';

import 'agendamento/agendamento_bloc.dart';
import 'agendamento/pages/confirmar_agendamento/confirmar_agenda_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ConfirmarAgendaBloc()),
        Bloc((i) => AgendamentoBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
