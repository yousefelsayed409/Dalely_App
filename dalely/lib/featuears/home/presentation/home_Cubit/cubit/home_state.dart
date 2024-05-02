// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class getHistoricalPeriodSuccess extends HomeState {}

class getHistoricalPeriodFailure extends HomeState {
  final String errorMessage;
  getHistoricalPeriodFailure({
    required this.errorMessage,
  });
}

class getHistoricalPeriodLoading extends HomeState {}
