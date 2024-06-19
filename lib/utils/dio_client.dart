import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  late final dio;
  final Duration maxTimeOut = const Duration(minutes: 1);

  DioClient() {
    final String baseUrl = dotenv.env['POKE_API'] ??
        'https://pokeapi.co/api/v2/'; // Just to make sure
    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: maxTimeOut,
        receiveTimeout: maxTimeOut));
  }
}
