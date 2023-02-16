// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract class Shape {
  Color? color;
  Shape({this.color});

  Shape.clone(Shape source) {
    color = source.color;
  }

  Shape clone();
  void randomProperties();
  Widget render();
}
