import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/App_Color.dart';
import '../../../../core/utils/App_Text_Style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.textbtn, this.onPressed,  this.color});
  final String textbtn;
  final void Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: onPressed,
          child: Text(
            textbtn,
            style: CustomTextStyles.poppins500style18
                .copyWith(color: Colors.white),
          )),
    );
  }
}
