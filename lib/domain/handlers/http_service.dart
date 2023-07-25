import 'package:book_shop/infrastructure/service/app_constants.dart';
import 'package:dio/dio.dart';

import 'token_interceptor.dart';

class HttpService {
  Dio client({bool requireAuth = false,bool chatGpt = false}) => Dio(
        BaseOptions(
          baseUrl: chatGpt ? "https://api.openai.com" : AppConstants.baseUrl,
          connectTimeout: 60 * 1000,
          receiveTimeout: 60 * 1000,
          sendTimeout: 60 * 1000,
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json'
          },
        ),
      )
        ..interceptors.add(TokenInterceptor(requireAuth: requireAuth))
        ..interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
}
