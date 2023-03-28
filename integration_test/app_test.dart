import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'bottom_nav_bar_test.dart';
import 'onboarding/view/onboarding_flow_test.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Development App', () {
    bottomNavBarTest();
    onboardingFlowTest();
  });
}
