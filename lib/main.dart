import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Assignment 05',
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
        leading: const Icon(Icons.add_business),
        title: const Text('Home'),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 70,
        backgroundColor: Colors.green,
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "This mod 5 Assignment",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: 'My ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: 'phone ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: 'name ',
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Your phone name',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
