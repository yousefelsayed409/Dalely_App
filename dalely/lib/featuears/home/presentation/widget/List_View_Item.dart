import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/App_Asset.dart';
import '../../../../core/utils/App_Color.dart';
import '../../../../core/utils/App_Text_Style.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 10, offset: const Offset(0, 7), color: AppColors.grey)
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            width: 74,
            height: 96,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Assets.imagesFrame3,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Lionheart',
            style: CustomTextStyles.poppins500style14,
          )
        ],
      ),
    );
  }
}
