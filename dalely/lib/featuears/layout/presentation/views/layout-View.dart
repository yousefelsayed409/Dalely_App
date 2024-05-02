import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/featuears/cart/persentation/cart_View.dart';
import 'package:dalely/featuears/home/presentation/home_Cubit/cubit/home_cubit.dart';
import 'package:dalely/featuears/home/presentation/view/Home_View.dart';
import 'package:dalely/featuears/profile/presentation/profile_View.dart';
import 'package:dalely/featuears/search/presentation/search_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../core/utils/App_Asset.dart';

PersistentTabController? controllerr;

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarStyle: NavBarStyle.style6,
      context,
      items: _navBarsItems(),
      controller: controllerr,
      backgroundColor: AppColors.btncolor,
      screens: _buildScreens(),
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
     BlocProvider(
      create: (context) => HomeCubit()..getHistoricalPeriod(),
      child: HomeView(),
    ),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesHomeIconActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesHomeIcon),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesShoppingCartActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesShoppingCart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesSearchActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesPersonActive),
      inactiveIcon: SvgPicture.asset(Assets.imagesPerson),
    ),
  ];
}
