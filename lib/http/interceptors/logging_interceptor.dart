import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('url: ${data.url}');
    print('headers: ${data.headers}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('Response');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    print('status code: ${data.statusCode}');
    return data;
  }
}
