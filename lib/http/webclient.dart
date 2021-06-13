import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';


final String baseUrl = 'http://localhost:8080/';

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

void findAll() async {
  Client client = HttpClientWithInterceptor.build(
    interceptors: [
      LoggingInterceptor(),
    ],
  );
  final Response response = await client.get('${baseUrl}transactions');
  
  // final Response response = await get('${baseUrl}transactions');
  // print(response.body);
}
