import 'package:dalely/core/Services/Service_Locator.dart';
import 'package:dalely/featuears/Auth/SignIn/presentation/Views/SignIn_screen.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/SignUp_Cubit/signup_cubit.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/views/SignUP_Screen.dart';
import 'package:dalely/featuears/HomeTow/homeTow_View.dart';
import 'package:dalely/featuears/forgot_Password/presentation/views/Foregot_Password_View.dart';
import 'package:dalely/featuears/home/data/models/Histprical_Periods_Models.dart';
import 'package:dalely/featuears/home/presentation/view/Historical%20_Periods%20_Details.dart';
import 'package:dalely/featuears/home/presentation/view/Home_View.dart';
import 'package:dalely/featuears/layout/presentation/views/layout-View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featuears/Splash/presentation/Views/Splash_View.dart';
import '../../featuears/on_Boarding/presentation/views/OnBoarding_View.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => OnBoardingView(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => const SignUPView(),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) => const SignInview(),
    ),
    GoRoute(
      path: '/homeNavBar',
      builder: (context, state) => const HomeNavBarWidget(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/ForgotPassword',
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: '/HomeTowView',
      builder: (context, state) => const HomeTowView(),
    ),
    GoRoute(
      path: '/HistoricalPeriodDetailView',
      builder: (context, state) =>  HistoricalPeriodsDetailView(
        model: state.extra as HistoricalPeriodsModel,

      ),
    ),
  ],
);
