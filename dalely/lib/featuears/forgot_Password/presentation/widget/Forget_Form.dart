import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/function/Toast.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/core/utils/App_String.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/SignIn_Cubit/cubit/sign_in_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Auth/SignUp/presentation/widget/Form_Field.dart';
import '../../../on_Boarding/presentation/Widgets/Custom_Btn.dart';

class ForgotPasswordForm extends StatelessWidget {
  ForgotPasswordForm({super.key});

  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is ForgorpasswordSuccessState) {
          toastMsg('Check Your Email To Verfiy');
          CustomNavigatePushReplace(context, '/SignIn');
        } else if (state is ForgorpasswordFailureState) {
          toastMsg(state.errorMessage);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<SignInCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: 'Email Adderss',
                  onChanged: (email) {
                    cubit.email = email;
                  },
                ),
                const SizedBox(
                  height: 102,
                ),
                state is SignInLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.deepBrown,
                      )
                    : CustomButton(
                        color: AppColors.btncolor,
                        onPressed: () {
                          if (keyForm.currentState!.validate()) {
                            BlocProvider.of<SignInCubit>(context)
                                .forgotPasswordWithEmail();
                          }
                        },
                        textbtn: AppStrings.sendResetPasswordLink),
              ],
            ),
          ),
        );
      },
    );
  }
}
