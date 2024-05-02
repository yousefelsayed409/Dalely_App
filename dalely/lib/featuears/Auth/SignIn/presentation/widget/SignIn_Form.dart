import 'package:dalely/core/function/Aweson_Dialog.dart';
import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/function/Toast.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/SignIn_Cubit/cubit/sign_in_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../on_Boarding/presentation/Widgets/Custom_Btn.dart';
import '../../../SignUp/presentation/widget/Form_Field.dart';
import '../../../SignUp/presentation/widget/Welcom_TExt.dart';
import 'Forget_Password.dart';

class SigninForm extends StatelessWidget {
  SigninForm({super.key});

  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          CustomNavigatePushReplace(context, '/homeNavBar');
          // FirebaseAuth.instance.currentUser!.emailVerified
          //     ?
          ///// 26
          //     : awesonDialogWidget(context, 'Please Verify Your Account');
          // toastMsg('Please Verify Your Account');
        } else if (state is SignInFailureState) {
          awesonDialogWidget(context, state.errorMessage);
          // toastMsg(state.errorMessage);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<SignInCubit>(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                const WelcomText(
                  text: 'Welcome Back !',
                ),
                const SizedBox(
                  height: 48,
                ),
                CustomTextFormField(
                    onChanged: (email) {
                      cubit.email = email;
                    },
                    labelText: 'Email'),
                CustomTextFormField(
                    onChanged: (password) {
                      cubit.password = password;
                    },
                    labelText: 'password'),
                const SizedBox(
                  height: 16,
                ),
                ForgetPasswordWidget(
                  onTap: () {
                    CustomNavigatePushReplace(context, '/ForgotPassword');
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
                                .signinUserWithEmailAndPassword();
                          }
                        },
                        textbtn: 'Sign In'),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  color: AppColors.btncolor,
                  textbtn: 'Signin with Google',
                  onPressed: () {
                    BlocProvider.of<SignInCubit>(context).signInWithGoogle();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
