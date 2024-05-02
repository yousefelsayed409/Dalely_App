import 'package:dalely/featuears/Auth/SignUp/presentation/SignUp_Cubit/signup_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/App_Color.dart';

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: AppColors.deepBrown,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: AppColors.grey),
      value: value,
      onChanged: (NewValue) {
        setState(() {
          value = NewValue!;
          BlocProvider.of<SignupCubit>(context)
              .termesAndCondition(newValue: NewValue);
        });
      },
    );
  }
}
