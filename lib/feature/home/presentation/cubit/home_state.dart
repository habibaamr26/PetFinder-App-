

import '../../data/models/response_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}
class HomeLoadedState extends HomeState {
  final List<CatApiResponse> catImages; // Replace dynamic with your actual model class

  HomeLoadedState({required this.catImages});
}
class HomeErrorState extends HomeState {
  final String errorMessage;

  HomeErrorState({required this.errorMessage});
}