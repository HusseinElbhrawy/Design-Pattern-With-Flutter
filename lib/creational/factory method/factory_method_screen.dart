import 'package:flutter/material.dart';

import '../factory%20method/dialog/android_dialog.dart';
import '../factory%20method/dialog/i_Dialog.dart';
import '../factory%20method/dialog/ios_dialog.dart';

class FactoryMethodScreen extends StatefulWidget {
  const FactoryMethodScreen({Key? key}) : super(key: key);

  @override
  State<FactoryMethodScreen> createState() => _FactoryMethodScreenState();
}

class _FactoryMethodScreenState extends State<FactoryMethodScreen> {
  int selectedRadioButton = 0;

  List<CustomDialog> dialogs = [
    CustomAndroidDialog(),
    CustomIosDialog(),
  ];

  Future _showCustomDialog(BuildContext context) async {
    CustomDialog selectedDialog = dialogs[selectedRadioButton];
    await selectedDialog.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory Method'),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: 0,
            groupValue: selectedRadioButton,
            onChanged: (value) {
              setState(() {
                selectedRadioButton = value!;
              });
            },
            title: const Text('Android Dialog'),
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedRadioButton,
            onChanged: (value) {
              setState(() {
                selectedRadioButton = value!;
              });
            },
            title: const Text('IOS Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showCustomDialog(context);
            },
            child: const Text('Show'),
          ),
        ],
      ),
    );
  }
}
