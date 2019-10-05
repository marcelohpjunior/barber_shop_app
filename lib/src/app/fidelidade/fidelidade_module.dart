import 'package:barber_shop_app/src/app/fidelidade/fidelidade_bloc.dart';
import 'package:barber_shop_app/src/app/fidelidade/fidelidade_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class FidelidadeModule extends ModuleWidget {
  PageController _pagecontroller;
  FidelidadeModule(this._pagecontroller);

  @override
  List<Bloc> get blocs => [
        Bloc((i) => FidelidadeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Fidelidade(_pagecontroller);

  static Inject get to => Inject<FidelidadeModule>.of();
}
