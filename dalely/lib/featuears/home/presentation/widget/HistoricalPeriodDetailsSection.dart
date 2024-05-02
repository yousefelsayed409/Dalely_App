import 'package:flutter/cupertino.dart';

import '../../../../core/models/data_Model.dart';
import 'Body Header_namPage.dart';
import 'Option_Widget.dart';

class HistoricalPeriodDetailsSection extends StatelessWidget {
  const HistoricalPeriodDetailsSection({super.key, required this.warsList, this.warsname});
  final List<DataModel> warsList;
  final warsname;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodynamePage(text: warsname),
        SizedBox(
          height: 16,
        ),
        CustomDataListView(datalist: warsList, routesPath: '/warsDetailView'),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
