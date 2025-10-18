import '../../../../core/networking/result.dart';
import '../api/home_api.dart';
import '../models/response_model.dart';

class HomeRepository {
  final HomeApi apiService;

  HomeRepository(this.apiService);

  // Get cat images
  Future<ApiResult<List<CatApiResponse>>> getCatImages() async {
    try {
      final List<CatApiResponse> response = await apiService.getCatImages();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error);

    }
  }

}
