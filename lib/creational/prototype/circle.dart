// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'shape.dart';

class Circle extends Shape {
  late double radius;
  Circle(Color color, {required this.radius}) : super(color: color);

  Circle.initial() : super(color: Colors.black) {
    radius = 50.0;
  }

  Circle.clone(Circle source) : super.clone(source) {
    radius = source.radius;
  }

  @override
  Shape clone() => Circle.clone(this);

  @override
  void randomProperties() {
    color = Color.fromRGBO(
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      1.0,
    );
    radius = Random().nextInt(50).toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 120,
      child: Center(
        child: AnimatedContainer(
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
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
