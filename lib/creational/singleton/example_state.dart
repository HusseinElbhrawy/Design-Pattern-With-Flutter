import 'dart:developer';

import 'examples/example_state_base.dart';

class ExampleState extends ExampleStateBase {
  static final ExampleState _instance = ExampleState._internal();

  ExampleState._internal() {
    initText = 'A New "ExampleState" instance has been created';
    stateText = initText;
    log(stateText);
  }

  factory ExampleState() => _instance;
}
