import 'package:flutter/material.dart';
import 'package:flutter_projects/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 06',
      home: ProductPage(),
      theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(Colors.blue),
      )),
    );
  }
}
