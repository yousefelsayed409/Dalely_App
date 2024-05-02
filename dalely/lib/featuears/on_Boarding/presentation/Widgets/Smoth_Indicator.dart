import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/App_Color.dart';

class SomothIndicator extends StatelessWidget {
  SomothIndicator({super.key, required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
          spacing: 8.0,
          radius: 10,
          dotWidth: 20,
          dotHeight: 8,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: AppColors.deepBrown),
    );
  }
}
