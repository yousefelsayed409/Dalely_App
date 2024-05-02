import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/App_String.dart';
import '../../../../../core/utils/App_Text_Style.dart';

class ForgetPasswordWidget extends StatelessWidget {
   ForgetPasswordWidget({super.key , this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: InkWell(
          onTap: onTap,
          child: Text(
            AppStrings.forgotPassword,
            style: CustomTextStyles.poppins600style28.copyWith(fontSize: 14),
          ),
        ));
  }
}