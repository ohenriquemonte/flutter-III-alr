import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

final String baseUrl = 'https://4c6669b08467.ngrok.io/';

Client client = HttpClientWithInterceptor.build(
  interceptors: [
    LoggingInterceptor(),
  ],
);
