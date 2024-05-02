import 'package:dalely/core/Services/Service_Locator.dart';
import 'package:dalely/core/app/App.dart';
import 'package:dalely/core/function/ChangeAuthState.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/helper/Cash_Helper.dart';
import 'firebase_options.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpServiceLocator();
  await getIt<CacheHelper>().init();
  ChangeStateAuth();
  runApp(const MyApp());
}

