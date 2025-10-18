

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../../../core/networking/api_constant.dart';
import '../models/response_model.dart';
part 'home_api.g.dart';
@RestApi(baseUrl: AppApiConstant.baseUrl)

abstract class HomeApi {
  factory HomeApi(Dio dio, {String? baseUrl}) = _HomeApi;
  @GET('search')
  Future<List<CatApiResponse>> getCatImages({
    @Query("limit") int limit = 10,
    @Query("breed_ids") String breedId = "beng",
    @Query("api_key") String apiKey =
        AppApiConstant.apiKey,
  });
}



/*
abstract class HomeApi {
  factory HomeApi(Dio dio, {String? baseUrl}) = _HomeApi;

  // Get cat images with breeds
  @GET('images/search')
  Future<List<CatImage>> getCatImages({
    @Query("limit") int limit = 10,
    @Query("has_breeds") int hasBreeds = 1,
    @Query("api_key") String apiKey = AppApiConstant.apiKey,
  });

  // Get cat images by breed
  @GET('images/search')
  Future<List<CatImage>> getCatImagesByBreed({
    @Query("limit") int limit = 10,
    @Query("breed_ids") String? breedId,
    @Query("api_key") String apiKey = AppApiConstant.apiKey,
  });

  // Get all breeds
  @GET('breeds')
  Future<List<CatBreed>> getAllBreeds({
    @Query("limit") int limit = 50,
    @Query("api_key") String apiKey = AppApiConstant.apiKey,
  });

  // Get specific breed
  @GET('breeds/{breed_id}')
  Future<CatBreed> getBreedById({
    @Path("breed_id") required String breedId,
    @Query("api_key") String apiKey = AppApiConstant.apiKey,
  });*/