import 'package:dalely/core/helper/Cash_Helper.dart';

import '../../../../../core/Services/Service_Locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'onBoardingVisited', value: true);
}
