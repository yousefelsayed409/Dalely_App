// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dalely/core/models/data_Model.dart';
import 'package:dalely/featuears/home/data/models/wars_Model.dart';

class HistoricalPeriodsModel extends DataModel {
  // final String name;
  // final String image;
  // final String description;
  final List<WarsModel> wars;
  HistoricalPeriodsModel(
      {required super.name,
      required super.image,
      required super.description,
      required this.wars});
  factory HistoricalPeriodsModel.fromjson(jsondata, warsList) {
    return HistoricalPeriodsModel(
        name: jsondata['name'],
        image: jsondata['image'],
        description: jsondata['description'],
        wars: warsList);
  }
}
