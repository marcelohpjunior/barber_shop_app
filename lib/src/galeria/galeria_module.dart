import 'package:barber_shop_app/src/galeria/galeria_bloc.dart';
import 'package:barber_shop_app/src/galeria/galeria_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class GaleriaModule extends ModuleWidget {
  PageController _pagecontroller;
  GaleriaModule(this._pagecontroller);

  @override
  List<Bloc> get blocs => [
        Bloc((i) => GaleriaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Galeria(_pagecontroller);

  static Inject get to => Inject<GaleriaModule>.of();
}
