import 'package:barber_shop_app/src/sobre/sobre_bloc.dart';
import 'package:barber_shop_app/src/sobre/sobre_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class SobreModule extends ModuleWidget {
    PageController _pagecontroller;
  SobreModule(this._pagecontroller);
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SobreBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Sobre(_pagecontroller);

  static Inject get to => Inject<SobreModule>.of();
}
