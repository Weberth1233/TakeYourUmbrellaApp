import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

//BrowserHttpClientAdapter
class ClimateClient extends DioMixin {
  @override
  // TODO: implement httpClientAdapter
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();
  String token = "2b2f007e";

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: 'https://api.hgbrasil.com/weather?',
        headers: {
          'Accept': 'application/json',
          "Authorization": 'Bearer $token',
        },
      );
}
