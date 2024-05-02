// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataModel {
  final String name;
  final String description;
  final String image;
  DataModel({
    required this.name,
    required this.description,
    required this.image,
  });
  factory DataModel.fromjson(jsondata) {
    return DataModel(
        name: jsondata['name'],
        description: jsondata['description'],
        image: jsondata['image']);
  }
}
