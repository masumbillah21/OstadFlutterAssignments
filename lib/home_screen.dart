import 'package:flutter/material.dart';
import 'package:flutter_projects/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final List<Item> _items = [];

  void saveData() {
    if (_formKey.currentState!.validate()) {
      _items.add(Item(
          title: _titleController.text,
          description: _descriptionController.text));
      _titleController.text = "";
      _descriptionController.text = "";
      setState(() {});
    }
  }

  void updateData(int index) {
    if (_formKey.currentState!.validate()) {
      _items[index].title = _titleController.text;
      _items[index].description = _descriptionController.text;

      _titleController.text = "";
      _descriptionController.text = "";
      setState(() {});
    }
  }

  void deleteDate(int index) {
    _items.removeAt(index);
    setState(() {});
  }

  void _showBottomModalSheet(int index) {
    _titleController.text = _items[index].title;
    _descriptionController.text = _items[index].description;
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: "Add Title",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  hintText: "Add Description",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  updateData(index);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Edit Done"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialogBox(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Alert"),
        content: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showBottomModalSheet(index);
              },
              child: const Text("Edit"),
            ),
            TextButton(
              onPressed: () {
                deleteDate(index);
                Navigator.pop(context);
              },
              child: const Text("Delete"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: "Add Title",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      hintText: "Add Description",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      saveData();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Save"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    onLongPress: () {
                      _showDialogBox(index);
                    },
                    tileColor: Colors.black12,
                    leading: const CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text(_items[index].title),
                    subtitle: Text(_items[index].description),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
