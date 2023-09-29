import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => SizedBox(
                    height: 200,
                    child: Card(
                      child: Image.network("https://via.placeholder.com/150"),
                    ),
                  ),
                );
              } else {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 15,
                  itemBuilder: (context, index) => Card(
                    child: Image.network("https://via.placeholder.com/150"),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
