import 'package:flutter/material.dart';

import '../../../../core/utils/App_Text_Style.dart';

class BodynamePage extends StatelessWidget {
  const BodynamePage({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextStyles.poppins400style20,
      
    );
  }
}