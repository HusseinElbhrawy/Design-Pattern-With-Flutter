import 'dart:developer';

import 'example_state_base.dart';

class ExampleStateByDefinition extends ExampleStateBase {
  static ExampleStateByDefinition? _instance;

  ExampleStateByDefinition._internal() {
    initText = 'A New "ExampleStateByDefinition" instance has been created';
    stateText = initText;
    log(stateText);
  }

  static ExampleStateByDefinition getState() {
    return _instance ??= ExampleStateByDefinition._internal();
  }
}
