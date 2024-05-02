import 'package:dalely/featuears/Auth/SignIn/presentation/SignIn_Cubit/cubit/sign_in_cubit.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/SignUp_Cubit/signup_cubit.dart';
import 'package:dalely/featuears/home/presentation/view/Home_View.dart';
import 'package:dalely/featuears/home/presentation/widget/AppBar_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../featuears/Auth/SignIn/presentation/Views/SignIn_screen.dart';
import '../router/App_Route.dart';
import '../utils/App_Color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home: HomeView(),
        // );
        MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupCubit(),
        ),
         BlocProvider(
          create: (context) => SignInCubit(),
          
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.primaryColor),
        routerConfig: router,
      ),
    );
  }
}
