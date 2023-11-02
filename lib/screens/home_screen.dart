import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects/data/photo.dart';
import 'package:flutter_projects/screens/photo_details.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Photo> _photos = [];
  bool _isLoading = false;

  void _showMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Something went wrong, please try again later."),
      ),
    );
  }

  Future<void> _getPhotos() async {
    setState(() {
      _isLoading = true;
    });
    try {
      Uri url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
      var response = await get(url);
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        for (Map<String, dynamic> photoJson in jsonData) {
          _photos.add(Photo.fromJson(photoJson));
        }
      } else {
        _showMessage();
      }
    } on Exception catch (_) {
      _showMessage();
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _getPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo Gallery App",
        ),
        actions: [
          IconButton(
            onPressed: () {
              _getPhotos();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _photos.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PhotoDetails(photo: _photos[index]),
                        ),
                      );
                    },
                    leading: Image.network(
                      _photos[index].thumbnail,
                      width: 60,
                      height: 60,
                      errorBuilder: (context, _, __) {
                        return const Icon(
                          Icons.image,
                          size: 60,
                        );
                      },
                    ),
                    title: Text(_photos[index].title),
                  ),
                );
              },
            ),
    );
  }
}
