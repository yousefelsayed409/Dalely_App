import 'package:dalely/core/helper/Cash_Helper.dart';
import 'package:dalely/featuears/Auth/SignUp/presentation/SignUp_Cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
    getIt.registerSingleton<SignupCubit>(SignupCubit());

}
