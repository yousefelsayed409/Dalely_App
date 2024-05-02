import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/core/utils/App_String.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/widget/Dont_Have_acount.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/widget/Forget_Password.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/widget/bannners.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/widget/Form_Field.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/widget/Havw_AnAcount.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/widget/Welcom_TExt.dart';
import 'package:dalely/featuears/on_Boarding/presentation/Widgets/Custom_Btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/function/Future_Delay.dart';
import '../widget/SignIn_Form.dart';

class SignInview extends StatelessWidget {
  const SignInview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SignInBanner(),
            const SizedBox(
              height: 32,
            ),
            SigninForm(),

            const SizedBox(
              height: 16,
            ),
            const DontHaveAcountWidget(textsp: 'Don’t have an account ?')
          ],
        ),
      ),
    );
  }
}
