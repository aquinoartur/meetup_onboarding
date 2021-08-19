import 'package:meetup_onboarding/app/modules/onboarding/onboarding_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => OnboardingStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => OnboardingPage(),
    ),
  ];
}
