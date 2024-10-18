import 'package:flutter/material.dart';

import '../models/album.dart'; // Assuming the Album model is in models/album.dart

class AlbumPreview extends StatelessWidget {
  final List<Album> albumsList; // List of albums passed into this widget

  AlbumPreview({required this.albumsList});

  // Optional method for handling when an album is tapped
  void getDetails(BuildContext context, Album album) {}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: albumsList.length, // Number of items in the list
        itemBuilder: (BuildContext context, int index) {
          var album = albumsList[index]; // Get the album at the current index
          return ListTile(
            leading: Image.network(album.image), // Display album image
            title: Text(album.title), // Display album title
            subtitle: Text(
              'Résumé: ${album.resume}, \n' // Display album resume
              'Année: ${album.year}, \n' // Display album year
              'Localisation: ${album.location}', // Display album location
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => getDetails(context, album)),
              );
            },
          );
        },
      ),
    );
  }
}
