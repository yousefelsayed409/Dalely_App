import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/core/utils/App_Color.dart';
import 'package:dalely/core/utils/App_String.dart';
import 'package:dalely/core/utils/App_Text_Style.dart';
import 'package:dalely/featuears/home/presentation/widget/Body%20Header_namPage.dart';
import 'package:dalely/featuears/home/presentation/widget/Home_Section_View.dart/Hestorical_Periods.dart';
import 'package:dalely/featuears/home/presentation/widget/Home_Section_View.dart/Historical_Characters_Sction.dart';
import 'package:dalely/featuears/home/presentation/widget/Home_Section_View.dart/Hostorical_Suverial_Sction.dart';
import 'package:dalely/featuears/home/presentation/widget/Option_Widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/AppBar_Widget.dart';
import '../widget/Custom_Category_List_View.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: HistoricalPeriodsSction(),
            ),
            SliverToBoxAdapter(
              child: HistoricalCharacterSection(),
            ),
            SliverToBoxAdapter(
              child: HistoricalSouvenirsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
