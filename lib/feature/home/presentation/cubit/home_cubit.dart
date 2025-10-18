import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/response_model.dart';
import '../../data/repository/home_repository.dart';

import '../screens/favorite_screen.dart';
import '../screens/home_screen.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  late HomeRepository homeRepository;
  HomeCubit({required this.homeRepository}) : super(HomeInitialState());

  int currentIndex = 0;

  List<Widget> Screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const FavoriteScreen(),
    const FavoriteScreen(),
  ];

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    if (currentIndex == 0) {
      handleGetCatImages();
    } else {
      emit(HomeChangeBottomNavState());
    }
  }

  void handleGetCatImages() async {
    emit(HomeLoadingState());
    final result = await homeRepository.getCatImages();
    result.when(
      onSuccess: (List<CatApiResponse> data) {
        emit(HomeLoadedState(catImages: data));
      },
      onError: (ApiErrorModel error) {
        emit(HomeErrorState(errorMessage: error.toString()));
      },
    );
  }
}
