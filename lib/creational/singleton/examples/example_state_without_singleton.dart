import 'dart:developer';

import 'example_state_base.dart';

class ExampleStateWithoutSingleton extends ExampleStateBase {
  ExampleStateWithoutSingleton() {
    initText = 'A New "ExampleStateWithoutSingleton" instance has been created';
    stateText = initText;
    log(stateText);
  }
}
