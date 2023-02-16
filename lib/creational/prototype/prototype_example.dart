import 'package:flutter/material.dart';

import '../../utils/widgets/custom_column_widget.dart';
import '../../utils/widgets/custom_place_holder_widget.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

class PrototypeExample extends StatefulWidget {
  const PrototypeExample({Key? key}) : super(key: key);

  @override
  State<PrototypeExample> createState() => _PrototypeExampleState();
}

class _PrototypeExampleState extends State<PrototypeExample> {
  final Shape _circle = Circle.initial();
  final Shape _rectangle = Rectangle.initial();

  Shape? _circleClone, _rectangleClone;

  void _randomCircleProperties() {
    setState(() {
      _circle.randomProperties();
    });
  }

  void _randomRectangleProperties() {
    setState(() {
      _rectangle.randomProperties();
    });
  }

  void _cloneCircle() {
    setState(() {
      _circleClone = _circle.clone();
    });
  }

  void _cloneRectangle() {
    setState(() {
      _rectangleClone = _rectangle.clone();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prototype DP')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kTabLabelPadding.horizontal),
        child: Column(
          children: [
            CustomColumnWidget(
              originalShape: _circle.render(),
              clonedShape:
                  _circleClone?.render() ?? const CustomPlaceHolderWidget(),
              clone: _cloneCircle,
              random: _randomCircleProperties,
            ),
            CustomColumnWidget(
              originalShape: _rectangle.render(),
              clonedShape:
                  _rectangleClone?.render() ?? const CustomPlaceHolderWidget(),
              clone: _cloneRectangle,
              random: _randomRectangleProperties,
            )
          ],
        ),
      ),
    );
  }
}
