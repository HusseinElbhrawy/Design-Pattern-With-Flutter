import 'package:flutter/material.dart';

import 'creational/factory%20method/factory_method_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Pattern',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const FactoryMethodScreen(),
    );
  }
}
