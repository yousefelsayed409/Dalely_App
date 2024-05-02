import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/OnBoardin_Model.dart';
import 'Smoth_Indicator.dart';

class OnBoadingBody extends StatelessWidget {
  OnBoadingBody({
    super.key,
    this.onPageChanged,
    required this.controller,
  });
  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                OnboargingList[index].imagePath,
                height: 290,
                width: 243,
              ),
              const SizedBox(
                height: 10,
              ),
              SomothIndicator(controller: controller),
              const SizedBox(
                height: 24,
              ),
              Text(
                OnboargingList[index].titleone,
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins500style24,
                maxLines: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                OnboargingList[index].titleToe,
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins300style16,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
