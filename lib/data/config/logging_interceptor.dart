import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    super.onRequest(options, handler);
    print(
        '--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"" + (options.path ?? "")}');
    print("Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));

    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
    print(
        "<-- ${err.message} ${(err.response?.requestOptions != null ? (err.response?.requestOptions.path) : 'URL')}");
    print("${err.response != null ? err.response?.data : 'Unknown Error'}");
    print("<-- End error");
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
    print(
        "<-- ${response.statusCode} ${(response.requestOptions != null ? (response.requestOptions.path) : 'URL')}");
    print("Headers:");
    response.headers?.forEach((k, v) => print('$k: $v'));
    print("Response: ${response.data}");
    print("<-- END HTTP");
  }
}
