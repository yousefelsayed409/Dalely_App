import 'package:dalely/core/models/data_Model.dart';
import 'package:dalely/core/utils/App_Asset.dart';
import 'package:dalely/featuears/home/data/models/Histprical_Periods_Models.dart';
import 'package:dalely/featuears/home/presentation/widget/Option_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/AppBar_Widget.dart';
import '../widget/Body Header_namPage.dart';
import '../widget/Custom_Category_List_View.dart';
import '../widget/HistoricalPeriodDetailsSection.dart';
import '../widget/Historical_period_Detail_Section.dart';

class HistoricalPeriodsDetailView extends StatelessWidget {
  const HistoricalPeriodsDetailView({super.key, required this.model});
  final HistoricalPeriodsModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: HomeAbbBarWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 7,
              ),
            ),
            SliverToBoxAdapter(
              child: HistoricalPeriodDetailSEction(
                PeriodName: model.name,
                description: model.description,
                Url: model.image,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            SliverToBoxAdapter(
              child: HistoricalPeriodDetailsSection(
                warsname: '${model.name} Wars',
                warsList: model.wars,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            const SliverToBoxAdapter(child: RecommendationsDetail()),
          ],
        ),
      ),
    ));
  }
}

class RecommendationsDetail extends StatelessWidget {
  const RecommendationsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        BodynamePage(text: 'Recommendations'),
        SizedBox(
          height: 16,
        ),
        CustomCategoryListView(),
        SizedBox(
          height: 32,
        ),
      ],
    );
    ;
  }
}
