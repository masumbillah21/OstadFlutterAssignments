import 'package:flutter/material.dart';
import 'package:flutter_projects/HomeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Test 09',
      home: HomeScreen(),
    );
  }
}
