import 'package:autoroute_modular_navigation/modular_app/pages/modular_page.dart';
import 'package:autoroute_modular_navigation/modular_app/pages/other_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const ModularPage()),
        ChildRoute('/other', child: (_, __) => const OtherPage()),
      ];
}
