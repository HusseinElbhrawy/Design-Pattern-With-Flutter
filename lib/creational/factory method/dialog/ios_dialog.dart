import 'package:flutter/cupertino.dart';

import '../../factory%20method/dialog/i_Dialog.dart';

class CustomIosDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
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
        CupertinoButton(
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
    return 'IOS Alert Dialog';
  }
}
