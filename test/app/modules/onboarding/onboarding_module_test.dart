import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meetup_onboarding/app/modules/onboarding/onboarding_module.dart';

void main() {
  setUpAll(() {
    initModule(OnboardingModule());
  });
}
