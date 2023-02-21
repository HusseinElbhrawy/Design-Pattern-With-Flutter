import 'package:flutter/material.dart';

abstract class ExampleStateBase {
  //? it is needed to make these properties accessible only for those classes

  @protected
  late String initText;
  @protected
  late String stateText;

  String get currentText => stateText;

  void setStateText(String text) {
    stateText = text;
  }

  void reset() {
    stateText = initText;
  }
}
