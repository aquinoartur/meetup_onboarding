import 'package:flutter_modular/flutter_modular.dart';

import 'modules/onboarding/onboarding_module.dart';
import 'modules/onboarding/pages/other_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: OnboardingModule()),
    ChildRoute('/other-page', child: (_, args) => OtherPage())
  ];
}
