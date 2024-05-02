import 'package:dalely/core/Services/Service_Locator.dart';
import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/helper/Cash_Helper.dart';
import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/core/utils/App_String.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:dalely/featuears/on_Boarding/data/models/OnBoardin_Model.dart';
import 'package:dalely/featuears/on_Boarding/presentation/views/function/on_Boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widgets/Btn_Skip.dart';
import '../Widgets/Custom_Btn.dart';
import '../Widgets/On_Boarding_Body.dart';
import '../Widgets/Smoth_Indicator.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  // final _controler = PageController();
  final PageController _controller = PageController(initialPage: 0);

  int currentIndex = 0;
  @override
  void initState() {
    // bool onBoardingVisited =
    //     getIt<CacheHelper>().getData(key: 'OnBoardingVisited') ?? false;
    // if (onBoardingVisited == true) {
    //   CustomNavigatepush(context, '/SignUp');
    // } else {
    //   CustomNavigatepush(context, '/OnBoarding');
    // }
    // // CustomDeleyNav(context, Path);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                    onBoardingVisited();
                    CustomNavigatePushReplace(context, '/SignUp');
                  },
                  child: const Text(AppStrings.skip)),
            ),
            const SizedBox(
              height: 24,
            ),
            OnBoadingBody(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            const SizedBox(
              height: 24,
            ),
            currentIndex == OnboargingList.length - 1
                ? Column(
                    children: [
                      CustomButton(
                          onPressed: () {
                            CustomNavigatePushReplace(context, '/SignUp');
                          },
                          textbtn: AppStrings.createAccount),
                      const SizedBox(
                        height: 10,
                      ),
                       InkWell(
                        onTap: () {
                           CustomNavigatePushReplace(context, '/SignIn');
                        },
                         child: const Text(
                          'Login',
                          style: CustomTextStyles.poppins300style16,
                                             ),
                       )
                    ],
                  )
                :
            CustomButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(microseconds: 200),
                      curve: Curves.bounceIn);
                },
                textbtn: 'Next'),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
