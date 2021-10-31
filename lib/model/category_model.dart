class CategoryModel {
  String? name;
  String? image;

  CategoryModel({required this.name,required this.image});

  CategoryModel.fromJson(Map<dynamic, dynamic>? map) {
    // if (map == null) {
    //   return;
    // }
    name = map['name'];
    image = map['image'];
  }

  Map<dynamic, dynamic> toJson()
  {
    return {'name': name, 'image': image};
  }
}
