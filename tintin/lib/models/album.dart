import 'gps.dart';

class Album {
  Album({
    required this.title,
    required this.numero,
    required this.year,
    required this.image,
    required this.resume,
    required this.gps,
    required this.location,
  });

  final String title;
  final int numero;
  final int year;
  final String image;
  final String resume;
  final Gps gps;
  final String location;

  @override
  String toString() {
    print(
        'Album{title: $title, number: $numero, year: $year, image: $image, resume: $resume, gps: $gps, location: $location}');

    return 'Album{title: $title, number: $numero, year: $year, image: $image, resume: $resume, gps: $gps, location: $location}';
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'number': numero,
      'year': year,
      'image': image,
      'resume': resume,
      'gps': gps,
      'location': location,
    };
  }
}
