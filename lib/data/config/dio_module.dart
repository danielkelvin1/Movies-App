import 'package:dio/dio.dart';
import 'package:movies_app/data/config/logging_interceptor.dart';
import 'package:movies_app/utils/constants.dart';

class DioModule with DioMixin implements Dio {
  DioModule() {
    options = BaseOptions(
        baseUrl: '',
        contentType: 'application/json',
        connectTimeout: const Duration(milliseconds: 300000),
        sendTimeout: const Duration(milliseconds: 300000),
        receiveTimeout: const Duration(milliseconds: 300000),
        headers: {
          'Authorization': 'Bearer $apiKey',
          'accept': 'application/json',
        });

    this.options = options;

    interceptors.add(LoggingInterceptor());
    httpClientAdapter = HttpClientAdapter();
  }
}
