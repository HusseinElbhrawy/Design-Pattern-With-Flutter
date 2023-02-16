import 'dart:math';

import 'package:flutter/material.dart';

import 'shape.dart';

class Rectangle extends Shape {
  late double height;
  late double width;

  Rectangle({
    required Color colors,
    required this.height,
    required this.width,
  }) : super(color: colors);

  Rectangle.initial() : super(color: Colors.black) {
    height = 100;
    width = 100;
  }

  Rectangle.clone(Rectangle source) : super.clone(source) {
    height = source.height;
    width = source.width;
  }

  @override
  Shape clone() => Rectangle.clone(this);

  @override
  void randomProperties() {
    color = Color.fromRGBO(
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      1.0,
    );

    height = Random.secure().nextInt(100).toDouble();
    width = Random.secure().nextInt(100).toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 120,
      child: Center(
        child: AnimatedContainer(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
          ),
          duration: const Duration(milliseconds: 500),
          child: const Icon(
            Icons.star,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
