import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/App_Text_Style.dart';

GestureDetector SignText(
      {required String text, required VoidCallback ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Text(
        text,
        style: CustomTextStyles.poppins400style12,
      ),
    );
  }
