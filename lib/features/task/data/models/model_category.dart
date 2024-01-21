class CategoryModel {
  final String body;
  final String coverImages;
  final List<String> images;

  CategoryModel(
      {required this.body, required this.coverImages, required this.images});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        body: json['body'],
        coverImages: json['cover_image'],
        images: List<String>.from(json['images']),
        );
  }
}
