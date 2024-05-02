import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/App_Asset.dart';
import '../../../../core/utils/App_Color.dart';
import '../../../../core/utils/App_String.dart';
import '../../../../core/utils/App_Text_Style.dart';

class HomeAbbBarWidget extends StatelessWidget {
  const HomeAbbBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesMenu),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico700style32
              .copyWith(fontSize: 22, color: AppColors.deepBrown),
        )
      ],
    );
  }
}
