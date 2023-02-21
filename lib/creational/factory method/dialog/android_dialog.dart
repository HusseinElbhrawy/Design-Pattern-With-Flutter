import 'package:flutter/material.dart';

import '../../factory%20method/dialog/i_Dialog.dart';

class CustomAndroidDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Android Alert Dialog',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        'This is Material Dialog for Android',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Android Alert Dialog';
  }
}
