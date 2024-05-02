import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../Body Header_namPage.dart';
import '../Custom_Category_List_View.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        BodynamePage(text: 'Historical Souvenirs'),
        SizedBox(
          height: 16,
        ),
        CustomCategoryListView(),
        SizedBox(
          height: 66,
        ),
      ],
    );
  }
}
