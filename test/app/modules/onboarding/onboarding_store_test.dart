import 'package:flutter_test/flutter_test.dart';
import 'package:meetup_onboarding/app/modules/onboarding/onboarding_store.dart';
 
void main() {
  late OnboardingStore store;

  setUpAll(() {
    store = OnboardingStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}