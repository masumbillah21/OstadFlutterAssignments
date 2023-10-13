import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _list = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
  ];
  final List<int> _selectedItems = [];
  void _showDialogBox(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Selected Item"),
        content: Text("Number of selected items: $index"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Close"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          "Selection Screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialogBox(_selectedItems.length);
        },
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              hoverColor: Colors.black12,
              onTap: () {
                _selectedItems.add(index);
                setState(() {});
              },
              tileColor: _selectedItems.contains(index) ? Colors.blue : null,
              title: Text(_list[index]),
            ),
          ),
        ),
      ),
    );
  }
}
