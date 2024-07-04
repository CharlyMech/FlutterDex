import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutterdex/utils/dio_client.dart';

class HasConnectionRepository {
  late final DioClient _client;

  HasConnectionRepository() {
    _client = DioClient();
  }

  Future<bool> testConnection() async {
    try {
      Response<dynamic> testResponse = await _client.dio.get('');
      print("== Connection response ==");
      print(testResponse.toString());
      return testResponse.toString().isEmpty ? false : true;
    } on DioException catch (dioe) {
      print("== DioException ==");
      print(dioe);
      return false;
    } on SocketException catch (soe) {
      print("== SocketException ==");
      print(soe);
      return false;
    } catch (e) {
      print("== Uncaught exception ==");
      print(e);
      return false;
    }
  }
}
