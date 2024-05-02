import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/function/Future_Delay.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    FirebaseAuth.instance.currentUser == null
        ? CustomDeleyNav(context, '/SignIn')
           : CustomDeleyNav(context, '/homeNavBar');
        // : FirebaseAuth.instance.currentUser!.emailVerified == true
         
        //     : CustomDeleyNav(context, '/SignIn');

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Dalely',
        style: CustomTextStyles.pacifico700style32
            .copyWith(color: AppColors.deepBrown),
      )),
    );
  }
}
