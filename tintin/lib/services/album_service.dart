import 'package:faker/faker.dart';

import '../models/album.dart';
import '../models/gps.dart';

class AlbumService {
  AlbumService();

  static Future<List<Album>> generateAlbums() async {
    var faker = Faker();

    var albumsList = List.generate(20, (i) {
      return Album(
        title: faker.lorem.sentence(),
        numero: i + 1,
        year: 2024,
        image: faker.image.loremPicsum(),
        resume: faker.lorem.sentence(),
        gps: Gps.getPosition(
          faker.randomGenerator
              .decimal(min: -90.0, scale: 90.0), // Latitude factice
          faker.randomGenerator
              .decimal(min: -180.0, scale: 180.0), // Longitude factice
        ),
        location: faker.address.city(),
      );
    });
    return albumsList;
  }
}

extension on RandomGenerator {
  year(int i) {}
}
