import 'package:dalely/core/utils/App_Asset.dart';

 class OnBoardingModel {
  final String imagePath;
  final String titleone, titleToe;

  OnBoardingModel(this.imagePath, this.titleone, this.titleToe);

 
}



 List<OnBoardingModel> OnboargingList = [
    OnBoardingModel(
        Assets.imagesOnBoarding,
        'Explore The history withDalel in a smart way',
        'Using our app’s history libraries you can find many historical periods '),
    OnBoardingModel(Assets.imagesOnBoarding1, 'From every placeon earth',
        'A big variety of ancient placesfrom all over the world'),
    OnBoardingModel(
        Assets.imagesOnBoarding2,
        'Using modern AI technologyfor better user experience',
        'AI provide recommendations and helpsyou to continue the search journey'),
  ];