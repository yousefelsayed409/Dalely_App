import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalely/core/function/Future_Delay.dart';
import 'package:dalely/core/function/Toast.dart';
import 'package:dalely/core/models/data_Model.dart';
import 'package:dalely/featuears/home/data/models/Histprical_Periods_Models.dart';
import 'package:dalely/featuears/home/presentation/home_Cubit/cubit/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/App_Asset.dart';
import '../../../../core/utils/App_Color.dart';
import '../../../../core/utils/App_String.dart';
import '../../../../core/utils/App_Text_Style.dart';
import '../../data/models/Histprical_Periods_Models.dart';
import '../../data/models/Histprical_Periods_Models.dart';

class OptionlWidgetChooes extends StatelessWidget {
  const OptionlWidgetChooes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is getHistoricalPeriodFailure) {
          toastMsg(state.errorMessage);
        }
      },
      builder: (context, state) {
        return state is getHistoricalPeriodLoading
            ? CircularProgressIndicator()
            : CustomDataListView(
                datalist: context.read<HomeCubit>().historicalperiod,
                routesPath: '/HistoricalPeriodDetailView',
              );
      },
    );
  }
}

class CustomDataListView extends StatelessWidget {
  CustomDataListView(
      {super.key, required this.datalist, required this.routesPath});
  final String routesPath;
  List<DataModel> datalist;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: datalist.length,
        // context.read<HomeCubit>().historicalperiod

        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          return CustomDataListViewItem(
            model: datalist[index],
            routePath: routesPath,
          );
        },
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [const OptinalItem(), const OptinalItem()],
      ),
    );
  }
}

class CustomDataListViewItem extends StatelessWidget {
  CustomDataListViewItem({required this.model, super.key, required this.routePath});
  final DataModel model;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomNavigatepush(
          context, routePath,
          extra: model
        );
      },
      child: Container(
        height: 96,
        width: 160,
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                offset: const Offset(1, 7),
                color: AppColors.grey)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 16,
            ),
            SizedBox(
              height: 48,
              width: 62,
              child: Text(
                model.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: CustomTextStyles.poppins500style14.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
                width: 47,
                height: 64,
                child: Image.network(
                  model.image,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}



 //  FutureBuilder<QuerySnapshot>(
    //     future:
    //         FirebaseFirestore.instance.collection('historical periods').get(),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasError) {
    //         return Text("Something went wrong");
    //       }

    //       if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
    //         return Text("Document does not exist");
    //       }
    //       if (snapshot.connectionState == ConnectionState.done) {
    //         List<HistoricalPeriods> historicalperiod = [];
    //         for (var i = 0; i < snapshot.data!.docs.length; i++) {
    //           historicalperiod
    //               .add(HistoricalPeriods.fromjson(snapshot.data!.docs[i]));
    //         }
    //         // return Text( $data['full_name'] );
    //         return SizedBox(
    //           height: 96,
    //           child: ListView.separated(
    //             physics: BouncingScrollPhysics(),
    //             scrollDirection: Axis.horizontal,
    //             separatorBuilder: (context, index) {
    //               return const SizedBox(
    //                 width: 10,
    //               );
    //             },
    //             itemCount: snapshot.data!.docs.length,

    //             itemBuilder: (context, index) {
    //               return OptinalItem(
    //                 model: historicalperiod[index],
    //               );
    //             },
    //             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             // children: [const OptinalItem(), const OptinalItem()],
    //           ),
    //         );
    //       }
    //       return Center(
    //           child: CircularProgressIndicator(
    //         color: AppColors.deepBrown,
    //       ));
    //     });