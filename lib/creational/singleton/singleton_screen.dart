import 'package:flutter/material.dart';

import 'example_state.dart';
import 'examples/example_state_base.dart';
import 'examples/example_state_by_definition.dart';
import 'examples/example_state_without_singleton.dart';

class SingletonScreen extends StatefulWidget {
  const SingletonScreen({Key? key}) : super(key: key);

  @override
  State<SingletonScreen> createState() => _SingletonScreenState();
}

class _SingletonScreenState extends State<SingletonScreen> {
  final List<ExampleStateBase> stateList = [
    ExampleState(),
    ExampleStateByDefinition.getState(),
    ExampleStateWithoutSingleton(),
  ];

  void _setTextValues([String text = 'Singleton']) {
    for (var state in stateList) {
      state.setStateText(text);
    }
    setState(() {});
  }

  void _reset() {
    for (var state in stateList) {
      state.reset();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton DP'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var state in stateList)
              Padding(
                padding: const EdgeInsets.all(16),
                child: SingletonCard(title: state.currentText),
              ),
            SizedBox(height: size.height / 7),
            TextButton(
              onPressed: _setTextValues,
              child: const Text("Change State' text to 'Singleton'"),
            ),
            TextButton(
              onPressed: _reset,
              child: const Text("Reset"),
            ),
            SizedBox(height: size.height / 10),
            const Text(
              "Note: Change state' text and navigate the application(e.g got to the tab descriptions or main menu)",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class SingletonCard extends StatelessWidget {
  const SingletonCard({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
