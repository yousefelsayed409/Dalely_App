import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/App_Text_Style.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(text,
            style: CustomTextStyles.poppins500style24
                .copyWith(fontWeight: FontWeight.w600)));
  }
}
