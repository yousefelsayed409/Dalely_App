// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalely/featuears/home/data/models/Histprical_Periods_Models.dart';
import 'package:dalely/featuears/home/data/models/wars_Model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<HistoricalPeriodsModel> historicalperiod = [];
  List<WarsModel> warsList = [];

  getHistoricalPeriod() async {
    try {
      emit(getHistoricalPeriodLoading());
      await FirebaseFirestore.instance
          .collection('historical periods')
          .get()
          .then(
            (value) => value.docs.forEach(
              (element) async {
                await FirebaseFirestore.instance
                    .collection('historical periods')
                    .doc(element.id)
                    .collection('wars')
                    .get()
                    .then(
                      (value) => value.docs.forEach(
                        (element) {
                          warsList.add(WarsModel.fromjson(element.data()));
                        },
                      ),
                    );
                historicalperiod.add(
                  HistoricalPeriodsModel.fromjson(element.data(), warsList),
                );
                emit(getHistoricalPeriodSuccess());
              },
            ),
          );
    } on Exception catch (e) {
      emit(getHistoricalPeriodFailure(errorMessage: e.toString()));
    }
  }
}
