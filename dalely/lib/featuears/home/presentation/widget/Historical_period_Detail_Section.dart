import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'Body Header_namPage.dart';

class HistoricalPeriodDetailSEction extends StatelessWidget {
  const HistoricalPeriodDetailSEction(
      {super.key, required this.PeriodName, this.description, this.Url});
  final PeriodName;
  final description;
  final Url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BodynamePage(
              text: 'About $PeriodName',
            ),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset('images/Vector (2).svg'),
          ],
        ),
        const SizedBox(
          height: 47,
        ),
        Row(
          children: [
            SizedBox(
                height: 220,
                width: 196,
                child: Text(
                  description,
                  style: CustomTextStyles.poppins500style14,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                )),
            const SizedBox(
              height: 16,
            ),
            SizedBox(height: 203, width: 131, child: Image.network(Url))
          ],
        )
      ],
    );
  }
}
