import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedButtonIndex = 0;
  final List<String> _buttonLabels = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("You selected $msg size")));
  }

  Widget _buildButton(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 80.0,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              selectedButtonIndex = index;
            });

            _showSnackBar(_buttonLabels[index]);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
                if (index == selectedButtonIndex) {
                  return Colors.orange; // Change color for the selected button
                }
                return Colors.grey; // Default color for unselected buttons
              },
            ),
          ),
          child: Text(
            _buttonLabels[index],
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Selector"),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          children: List.generate(
            _buttonLabels.length,
            (index) => _buildButton(index),
          ),
        ),
      ),
    );
  }
}
