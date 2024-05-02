import 'package:dalely/featuears/home/presentation/widget/AppBar_Widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../Body Header_namPage.dart';
import '../Option_Widget.dart';

class HistoricalPeriodsSction extends StatelessWidget {
  const HistoricalPeriodsSction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
          SizedBox(
            height: 72,
          ),
            HomeAbbBarWidget(),
            SizedBox(
              height: 32,
            ),
            BodynamePage(text: 'Historical periods'),
            SizedBox(
              height: 16,
            ),
            OptionlWidgetChooes(),
            SizedBox(
              height: 32,
            ),
      ],
    );
  }
}