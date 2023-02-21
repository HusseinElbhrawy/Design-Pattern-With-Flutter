// ignore_for_file: file_names

import 'package:flutter/material.dart';

abstract class CustomDialog {
  Widget create(BuildContext context);
  String getTitle();

  Future<void> show(BuildContext context) async {
    var dialog = create(context);

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return dialog;
      },
    );
  }
}
