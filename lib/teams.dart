class Teams {
  final int id;
  final String name;
  final String image;
  final String location;
  final String stadium;
  final int capacity;
  final String manager;
  final String captain;
  final double lat;
  final double lng;

  Teams(this.id, this.name, this.image, this.location, this.stadium,
      this.capacity, this.manager, this.captain, this.lat, this.lng);

  // konversi dari json ke maps
  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(
      json['id'] as int,
      json['name'] as String,
      json['image'] as String,
      json['location'] as String,
      json['stadium'] as String,
      json['capacity'] as int,
      json['manager'] as String,
      json['captain'] as String,
      json['lat'] as double,
      json['lng'] as double,
    );
  }
}
