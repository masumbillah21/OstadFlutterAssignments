class Photo {
  int id;
  String title;
  String thumbnail;
  String imageUrl;

  Photo(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.imageUrl});

  factory Photo.fromJson(Map<String, dynamic> photoJson) {
    return Photo(
      id: photoJson['id'],
      title: photoJson['title'],
      thumbnail: photoJson['thumbnailUrl'],
      imageUrl: photoJson['url'],
    );
  }
}
