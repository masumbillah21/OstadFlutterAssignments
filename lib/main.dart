import 'package:flutter/material.dart';
import 'package:flutter_projects/HomeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 09',
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: TextStyle(
            color: Colors.black54,
            fontSize: width < 300 ? 10 : 15,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: width < 300 ? 13 : 16,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: width < 300 ? 20 : 35,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: width < 300 ? 13 : 17,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              minimumSize: const Size(30, 30)),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
