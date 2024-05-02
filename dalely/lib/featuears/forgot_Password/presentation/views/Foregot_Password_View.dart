import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/core/utils/App_String.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/widget/Welcom_TExt.dart';
import 'package:dalely/featuears/forgot_Password/presentation/widget/Forget_Form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/Image_Fogot.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 176,
          ),
        ),
        const SliverToBoxAdapter(
          child: WelcomText(text: AppStrings.forgotPasswordPage),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        const SliverToBoxAdapter(
          child: ForgetPaswwordImage(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        const SliverToBoxAdapter(
          child: ForgotPasswordTitle(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: ForgotPasswordForm(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
          ),
        ),
      ],
    ));
  }
}

class ForgotPasswordTitle extends StatelessWidget {
  const ForgotPasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter your registered email below to receivepassword reset instruction',
      textAlign: TextAlign.center,
      style: CustomTextStyles.poppins400style12.copyWith(fontSize: 14),
    );
  }
}
