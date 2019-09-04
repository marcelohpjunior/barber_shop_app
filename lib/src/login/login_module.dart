import 'package:barber_shop_app/src/login/login_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LoginBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Login();

  static Inject get to => Inject<LoginModule>.of();
}
