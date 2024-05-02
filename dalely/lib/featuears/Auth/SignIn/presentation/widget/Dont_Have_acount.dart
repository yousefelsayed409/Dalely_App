import 'package:flutter/cupertino.dart';

import '../../../../../core/function/Future_Delay.dart';
import '../../../../../core/utils/App_Text_Style.dart';
import '../../../SignUp/presentation/widget/Havw_AnAcount.dart';

class DontHaveAcountWidget extends StatelessWidget {
  const DontHaveAcountWidget({super.key, required this.textsp});
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
          text: '  SignUp',
          press: () {
            CustomNavigatePushReplace(context, '/SignUp');
          },
        )
      ],
    );
    ;
  }
}
