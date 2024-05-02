import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/App_String.dart';
import '../../../../../core/utils/App_Text_Style.dart';
import 'CheckBox.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckBoxWidget(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: AppStrings.iHaveAgreeToOur,
                  style: CustomTextStyles.poppins400style12),
              TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: CustomTextStyles.poppins400style12.copyWith(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
