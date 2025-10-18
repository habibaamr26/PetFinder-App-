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
/*
  // Get cat images by breed
  Future<List<CatImage>> getCatImagesByBreed({
    required String breedId,
    int limit = 10,
  }) async {
    try {
      final response = await _homeApi.getCatImagesByBreed(
        limit: limit,
        breedId: breedId,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Get all breeds
  Future<List<CatBreed>> getAllBreeds({int limit = 50}) async {
    try {
      final response = await _homeApi.getAllBreeds(limit: limit);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Get breed by id
  Future<CatBreed> getBreedById(String breedId) async {
    try {
      final response = await _homeApi.getBreedById(breedId: breedId);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Search breeds
  Future<List<CatBreed>> searchBreeds(String query) async {
    try {
      final response = await _homeApi.searchBreeds(query: query);
      return response;
    } catch (e) {
      rethrow;
    }
  }*/
}
