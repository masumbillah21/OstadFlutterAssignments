import 'package:flutter/material.dart';
import 'package:flutter_projects/data/photo.dart';

class PhotoDetails extends StatelessWidget {
  final Photo photo;
  const PhotoDetails({required this.photo, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).width,
              child: Image.network(
                photo.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, _, __) {
                  return const Icon(
                    Icons.image,
                    size: 60,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Title: ${photo.title}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "ID: ${photo.id}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
