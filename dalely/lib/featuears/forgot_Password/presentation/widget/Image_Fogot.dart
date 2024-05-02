import 'package:flutter/cupertino.dart';

import '../../../../core/utils/App_Asset.dart';

class ForgetPaswwordImage extends StatelessWidget {
  const ForgetPaswwordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(Assets.imagesForgotPassword),
    );
  }
}
