import 'package:dalely/core/function/Dialog.dart';
import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/function/Toast.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/SignUp_Cubit/signup_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../on_Boarding/presentation/Widgets/Custom_Btn.dart';
import 'Form_Field.dart';
import 'TermsAndCondition.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          toastMsg('SuccessFully , Check Your email to verify your Acount');
          CustomNavigatePushReplace(context, '/SignIn');
        } else if (state is SignupFailureState) {
          // DialogmsgFail(message: state.errorMessage);
          toastMsg(state.errorMessage);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<SignupCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                CustomTextFormField(
                    onChanged: (nameFirst) {
                      cubit.firstName = nameFirst;
                    },
                    labelText: 'FirstName'),
                CustomTextFormField(
                    onChanged: (namelast) {
                      cubit.lastName = namelast;
                    },
                    labelText: 'lastName'),
                CustomTextFormField(
                    onChanged: (email) {
                      cubit.email = email;
                    },
                    labelText: 'Email'),
                CustomTextFormField(
                    onChanged: (password) {
                      cubit.password = password;
                    },
                    labelText: 'Password'),
                const TermsAndConditionWidget(),
                const SizedBox(
                  height: 50,
                ),
                state is SignupLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.deepBrown,
                      )
                    : CustomButton(
                        color: cubit.termsAndCondition == false
                            ? AppColors.grey
                            : AppColors.btncolor,
                        textbtn: 'SignUp',
                        onPressed: () async {
                          if (cubit.termsAndCondition == true) {
                            if (keyForm.currentState!.validate()) {
                              BlocProvider.of<SignupCubit>(context)
                                  .createUserWithEmailAndPassword();
                            }
                          }
                        },
                      ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
