import 'package:exam_rivaslopezerika/widget_pizza_screen.dart';
import 'package:flutter/material.dart';

///Widgets lo mas importante
// 1. Stateless widget - sin estado
// 2. Statefull widget - con estado

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => const WidgetPizza(),

        //'WidgetPizzaTest': (context) => const WidgetPizzaTest()
        'WidgetPizza': (context) => const WidgetPizza()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'WidgetPizza',
    );
  }
}
