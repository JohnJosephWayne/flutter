class Gps {
  Gps({required this.latitude, required this.longitude});

  double latitude;
  double longitude;

  factory Gps.getPosition(latitude, longitude) {
    return Gps(
      latitude: (latitude),
      longitude: (longitude),
    );
  }
}
