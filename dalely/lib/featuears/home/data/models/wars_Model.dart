import 'package:dalely/core/models/data_Model.dart';

class WarsModel extends DataModel {
  WarsModel(
      {required super.name, required super.description, required super.image});

  factory WarsModel.fromjson(jsondata) {
    return WarsModel(
        name: jsondata['name'],
        description: jsondata['description'],
        image: jsondata['image']);
  }
}
