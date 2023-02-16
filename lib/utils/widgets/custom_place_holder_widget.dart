import 'package:flutter/material.dart';

class CustomPlaceHolderWidget extends StatelessWidget {
  const CustomPlaceHolderWidget({
    super.key,
    this.shape,
    this.color,
  });
  final Widget? shape;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Placeholder(
      fallbackHeight: size.height / 10,
      fallbackWidth: size.width / 6,
      color: color ?? Colors.black,
      child: shape,
    );
  }
}
