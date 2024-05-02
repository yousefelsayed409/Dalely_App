import 'package:dalely/core/function/Future_Delay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/App_String.dart';
import '../../../../../core/utils/App_Text_Style.dart';

class HaveAnAcountWidget extends StatelessWidget {
  const HaveAnAcountWidget({super.key, required this.textsp});
  final String textsp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: textsp, style: CustomTextStyles.poppins400style12),
            ],
          ),
        ),
        SignText(
          text: 'SignIn',
          press: () {
            CustomNavigatePushReplace(context, '/SignIn');
          },
        )
      ],
    );
  }
}

class SignText extends StatelessWidget {
  SignText({super.key, required this.text, this.press});
  final String text;
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Text(
          text,
          style: CustomTextStyles.poppins400style12.copyWith(fontSize: 14),
        ));
  }
}
