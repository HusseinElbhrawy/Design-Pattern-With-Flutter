import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  const CustomColumnWidget({
    super.key,
    required this.originalShape,
    required this.clonedShape,
    required this.clone,
    required this.random,
  });
  final Widget? originalShape;
  final Widget? clonedShape;
  final VoidCallback random;
  final VoidCallback clone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text('Original Shape'),
                const Divider(color: Colors.transparent),
                originalShape ?? const Text('Original Shape is Null'),
              ],
            ),
            Column(
              children: [
                const Text('Cloned Shape'),
                const Divider(color: Colors.transparent),
                clonedShape ?? const Text('Cloned Shape is Null'),
              ],
            )
          ],
        ),
        ElevatedButton(
          onPressed: random,
          child: const Text('Random Prop'),
        ),
        ElevatedButton(
          onPressed: clone,
          child: const Text('Clone'),
        )
      ],
    );
  }
}
