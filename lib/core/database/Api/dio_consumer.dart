import 'package:chef_app/core/database/Api/api_consumer.dart';
import 'package:dio/dio.dart';

import '../../Errors/error_model.dart';
import '../../Errors/exceptions.dart';
import 'api_interceptors.dart';
import 'endpoints.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoints.baseurl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  handleDioException(e) {
    switch (e.type) {
      case DioExceptionType.badCertificate:
        throw BadCertificateException(ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionTimeout:
        throw ConnectionTimeoutExpection(ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeoutException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.connectionError:
        throw ConnectionErrorException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.sendTimeout:
        // throw ServerException('connection Error');
        throw ServerException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400: //bad request
            throw BadRequestException(ErrorModel.fromJson(e.response!.data));
          case 401: //unauthorized
            throw UnauthorizedExpection(ErrorModel.fromJson(e.response!.data));
          case 403: //forbidden
            throw ForbiddenException(ErrorModel.fromJson(e.response!.data));
          case 404: //notFound
            throw NotFoundException(ErrorModel.fromJson(e.response!.data));
          case 409: //conflict
            throw ConnectionErrorException(
                ErrorModel.fromJson(e.response!.data));

          // print(e.response);
        }
      case DioExceptionType.cancel:
        throw CancelException(ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerException(ErrorModel.fromJson(e.response!.data));

      // throw ServerException('badResponse');
    }
  }
}
