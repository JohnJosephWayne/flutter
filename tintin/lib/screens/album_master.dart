import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tintin/services/album_service.dart';

import '../models/album.dart';

class AlbumMaster extends StatefulWidget {
  const AlbumMaster({super.key});

  @override
  State<AlbumMaster> createState() => _AlbumMasterState();
}

class _AlbumMasterState extends State<AlbumMaster> {
  Future<List<Map>> readJsonFile(String filePath) async {
    var input = await File('tintin/lib/albums-tintin.json').readAsString();
    var map = jsonDecode(input);
    return map['album'];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Album>>(
        future:
            AlbumService.generateAlbums(), // Asynchronous call to get albums
        builder: (BuildContext context, AsyncSnapshot<List<Album>> snapshot) {
          // Check if the future is still loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          // Check if there is an error with fetching data
          else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          }
          // Check if the future completed successfully and we have data
          else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            var albums = snapshot.data!; // Albums data
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: albums.length, // Number of items to display
              itemBuilder: (BuildContext context, int index) {
                var album = albums[index]; // Get the album at the current index
                return ListTile(
                  leading: Image.network(album.image), // Display album image
                  title: Text(album.title), // Display album title
                  subtitle: Text(
                    'Année: ${album.year}, '
                    'Localisation: ${album.location}',
                  ), // Display year and location
                  onTap: () {
                    getDetails();
                    print('Album ${album.title} sélectionné');
                  },
                );
              },
            );
          }
          // If there's no data or the list is empty
          else {
            return const Center(child: Text('Aucun album disponible.'));
          }
        },
      ),
    );
  }
}
