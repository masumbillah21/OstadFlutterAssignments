import 'package:flutter/material.dart';
import 'package:flutter_projects/HomeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 09',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: const CircleBorder(),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
