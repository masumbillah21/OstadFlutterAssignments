import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Live Test 05',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 2,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_rounded,
              size: 60,
              color: Colors.green,
            ),
            Text(
              "Jhon Doe",
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              ),
            ),
            Text(
              "Flutter Batch 4",
              style: TextStyle(
                fontSize: 23,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
