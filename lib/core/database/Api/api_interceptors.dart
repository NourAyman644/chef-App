import 'package:chef_app/core/database/Api/endpoints.dart';
import 'package:dio/dio.dart';

import '../../services/services_locator.dart';
import '../cache/cache_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] =
        sl<CacheHelper>().getData(key: ApiKeys.token) != null
            ? 'FOODAPI ${sl<CacheHelper>().getData(key: 'token')}'
            : null;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
