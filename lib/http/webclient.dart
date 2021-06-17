import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

final String baseUrl = 'https://24a5e8b4c301.ngrok.io/';

Client client = HttpClientWithInterceptor.build(
  interceptors: [
    LoggingInterceptor(),
  ],
);
