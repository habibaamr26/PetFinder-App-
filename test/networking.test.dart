

import 'package:animals_app/core/networking/api_error_handler.dart';
import 'package:animals_app/core/networking/api_error_model.dart';
import 'package:animals_app/core/networking/result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
void main() {
  test('Networking Test api error handler test', () {
    final response = Response(
      requestOptions: RequestOptions(path: 'https://api.example.com/users'),
      statusCode: 404,
      data: {"error": "User not found"},
    );
    final dioError = DioException(
      type: DioExceptionType.badResponse,
      response: response,
      requestOptions: response.requestOptions,
    );
    final errorHandler = ErrorHandler.handle(dioError);
    expect(errorHandler.apiErrorModel.responseCode, 404);
    expect(errorHandler.apiErrorModel.message, "notFoundError");

  });

  test("test api error model by send to it json and see data store", (){
    final json={
      "responseCode": 500,
      "message": "Internal Server Error"
    };
    final apiErrorModel=ApiErrorModel.fromJson(json);
    expect(apiErrorModel.responseCode, 500);
    expect(apiErrorModel.message, "Internal Server Error");
  });


  group('ApiResult Tests', () {
    test('ApiResult.success should create ApiSuccess instance', () {
      final result = ApiResult.success('test data');

      // Assert
      expect(result, isA<ApiSuccess<String>>());
      expect((result as ApiSuccess).data, 'test data');
    });

    test('ApiResult.error should create ApiError instance', () {
      // Arrange & Act
      final error = Exception('Test error');
      final result = ApiResult<String>.error(error);

      // Assert
      expect(result, isA<ApiError<String>>());
      expect((result as ApiError).error, error);
    });

    test('when method should call onSuccess for ApiSuccess', () {
      // Arrange
      final result = ApiResult.success(42);
      int? successValue;
      ApiErrorModel? errorValue;

      // Act
      result.when(
        onSuccess: (data) {
          successValue = data;
        },
        onError: (error) {
          errorValue = error;
        },
      );

      // Assert
      expect(successValue, 42);
      expect(errorValue, isNull);
    });

    test('when method should call onError for ApiError', () {
      // Arrange
      final result = ApiResult<String>.error(Exception('Network error'));
      String? successValue;
      ApiErrorModel? errorValue;

      // Act
      result.when(
        onSuccess: (data) {
          successValue = data;
        },
        onError: (error) {
          errorValue = error;
        },
      );

      // Assert
      expect(successValue, isNull);
      expect(errorValue, isNotNull);
    });

    test('ApiSuccess should store data correctly', () {
      // Arrange
      final testData = ['item1', 'item2', 'item3'];

      // Act
      final result = ApiSuccess(testData);

      // Assert
      expect(result.data, testData);
      expect(result.data.length, 3);
    });

    test('ApiError should store error correctly', () {
      // Arrange
      final testError = Exception('Test exception');

      // Act
      final result = ApiError<String>(testError);

      // Assert
      expect(result.error, testError);
      expect(result.error.toString(), contains('Test exception'));
    });

    test('when should handle complex objects in success case', () {
      // Arrange
      final complexData = {
        'id': 1,
        'name': 'Test',
        'items': ['a', 'b', 'c']
      };
      final result = ApiResult.success(complexData);

      // Act
      var receivedData;
      result.when(
        onSuccess: (data) => receivedData = data,
        onError: (error) => fail('Should not call onError'),
      );

      // Assert
      expect(receivedData, complexData);
      expect(receivedData['name'], 'Test');
      expect(receivedData['items'].length, 3);
    });

    test('ApiResult should support different generic types', () {
      // String type
      final stringResult = ApiResult.success('text');
      expect(stringResult, isA<ApiSuccess<String>>());

      // Int type
      final intResult = ApiResult.success(123);
      expect(intResult, isA<ApiSuccess<int>>());

      // List type
      final listResult = ApiResult.success([1, 2, 3]);
      expect(listResult, isA<ApiSuccess<List<int>>>());

      // Map type
      final mapResult = ApiResult.success({'key': 'value'});
      expect(mapResult, isA<ApiSuccess<Map<String, String>>>());
    });
  });




}
