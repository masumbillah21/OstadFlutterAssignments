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
      title: 'Live Test 06',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final TextStyle myTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("My Shopping List"),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.apple),
            title: Text("Apple"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Orange"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Banana"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Pineapple"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Jack Fruit"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Mango"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Litchi"),
          ),
        ],
      ),
    );
  }
}
