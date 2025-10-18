import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/response_model.dart';
import '../../data/repository/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  late HomeRepository homeRepository;
  HomeCubit({required this.homeRepository}) : super(HomeInitialState());

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
