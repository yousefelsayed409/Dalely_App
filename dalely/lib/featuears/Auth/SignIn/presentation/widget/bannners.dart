import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/App_Asset.dart';
import '../../../../../core/utils/App_Color.dart';
import '../../../../../core/utils/App_String.dart';
import '../../../../../core/utils/App_Text_Style.dart';

class SignInBanner extends StatelessWidget {
  const SignInBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            color: AppColors.btncolor,
            height: 290,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              const  Text(
                  AppStrings.appName,
                  style: CustomTextStyles.pacifico700style32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Assets.imagesVector1),
                    SvgPicture.asset(Assets.imagesVector2),
                  ],
                )
              ],
            ),
          ) ;
  }
}