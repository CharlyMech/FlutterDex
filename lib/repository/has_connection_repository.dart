import 'package:dio/dio.dart';
import 'package:flutterdex/utils/dio_client.dart';

class HasConnectionRepository {
  late final DioClient _client;

  HasConnectionRepository() {
    _client = DioClient();
  }

  Future<bool> testConnection() async {
    Response<dynamic> testResponse = await _client.dio.get('');
    print("== Connection response ==");
    print(testResponse.toString());
    await Future.delayed(const Duration(seconds: 5), () {});
    return testResponse.toString().isEmpty ? false : true;
  }
}
