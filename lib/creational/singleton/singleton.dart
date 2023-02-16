import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingletonDesignPattern extends StatelessWidget {
  const SingletonDesignPattern._internal();

  static const SingletonDesignPattern _instance =
      SingletonDesignPattern._internal();

  factory SingletonDesignPattern() => _instance;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Singleton {
  static Singleton? _instance;

  Singleton._();
  static Singleton get instance {
    _instance ??= Singleton._();
    return _instance!;
  }
}
