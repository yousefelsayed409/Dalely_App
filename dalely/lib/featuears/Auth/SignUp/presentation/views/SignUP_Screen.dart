import 'package:dalely/core/utils/App_String.dart';
import 'package:flutter/material.dart';

import '../widget/Havw_AnAcount.dart';
import '../widget/SignUp_Form.dart';
import '../widget/Welcom_TExt.dart';

class SignUPView extends StatelessWidget {
  const SignUPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 152,
          ),
        ),
        const SliverToBoxAdapter(
          child: WelcomText(text: 'Welcome !'),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: SignUpForm(),
        ),
        const SliverToBoxAdapter(
          child: HaveAnAcountWidget(textsp: AppStrings.alreadyHaveAnAccount),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
      ],
    ));
  }
}
