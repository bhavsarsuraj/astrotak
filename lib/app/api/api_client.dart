import 'dart:io';

import 'package:astrotak/app/data/models/response/error/error_response.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/constants/urls.dart';
import 'package:dio/dio.dart';

class ApiClient {
  late Dio _dio;

  // Singleton Api Client
  static final ApiClient _apiController = ApiClient._internal();

  factory ApiClient() {
    _apiController.init();
    return _apiController;
  }

  ApiClient._internal();

  void init() {
    BaseOptions dioOptions = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      baseUrl: URLs.base,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {
        'Accept': Headers.jsonContentType,
      },
    );
    _dio = Dio(dioOptions);
    _setupInterceptors();
  }

  // Setup Interceptor
  void _setupInterceptors() {
    _dio.interceptors.add(
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }

  // Error Handler
  ErrorResponse _handleError(DioError error) {
    late ErrorResponse errorResponse;
    if (error.type == DioErrorType.other &&
        error.error != null &&
        error.error is SocketException) {
      errorResponse = ErrorResponse(
        message: ErrorMessages.noInternet,
        success: false,
      );
      return errorResponse;
    }

    switch (error.type) {
      case DioErrorType.cancel:
        errorResponse = ErrorResponse(
          message: ErrorMessages.somethingWentWrong,
          success: false,
        );
        break;
      case DioErrorType.response:
        if (error.response?.data != null) {
          try {
            errorResponse = ErrorResponse.fromJson(error.response!.data);
          } catch (e) {
            errorResponse = ErrorResponse(
              message: ErrorMessages.somethingWentWrong,
              success: false,
            );
          }
        } else {
          errorResponse = ErrorResponse(
            message: ErrorMessages.somethingWentWrong,
            success: false,
          );
        }
        break;
      case DioErrorType.connectTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        errorResponse = ErrorResponse(
          message: ErrorMessages.serverTimeout,
          success: false,
        );
        break;
      case DioErrorType.other:
        errorResponse = ErrorResponse(
          message: ErrorMessages.noInternet,
          success: false,
        );
        break;
      default:
        errorResponse = ErrorResponse(
          message: ErrorMessages.somethingWentWrong,
          success: false,
        );
    }
    return errorResponse;
  }

  // GET
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: query,
      );
      return response.data;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }

  // POST
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }

  // PUT
  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }

  // PATCH
  Future<Map<String, dynamic>> patch(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.patch(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }

  // DELETE
  Future<Map<String, dynamic>?> delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }
}
