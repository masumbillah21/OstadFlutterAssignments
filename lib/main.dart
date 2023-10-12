import 'package:flutter/material.dart';
import 'package:flutter_projects/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 10',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue,
              ),
            ),
            errorBorder: OutlineInputBorder(),
          )),
      home: const HomeScreen(),
    );
  }
}
