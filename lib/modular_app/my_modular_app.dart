import 'package:autoroute_modular_navigation/modular_app/app_module.dart';
import 'package:autoroute_modular_navigation/modular_app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyModularApp extends ModularApp {
  MyModularApp({Key? key})
      : super(
          key: key,
          module: AppModule(),
          child: WillPopScope(
            onWillPop: () async {
              // Back action override to pop with modular when possible
              // and pop with default navigator (autoroute) otherwise
              final canPop = Modular.to.canPop();
              if (canPop) {
                Modular.to.pop();
              }

              return !canPop;
            },
            child: const AppWidget(),
          ),
        );
}
