import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutterdex/models/generation.dart';
import 'package:flutterdex/utils/dio_client.dart';

class NavigationRepository {
  late final DioClient _client;

  NavigationRepository() {
    _client = DioClient();
  }

  Future<List<dynamic>> getAllGenerations() async {
    try {
      Response<dynamic> generationsListResponse =
          await _client.dio.get('/generation');
      if (generationsListResponse.statusCode == 200) {
        return (generationsListResponse.data
            as Map<String, dynamic>)['results'];
      } else {
        print('No data returned on getGenerationsData');
        throw Exception('No data returned!');
      }
    } on DioException catch (dioe) {
      print("== DioException ==");
      print(dioe);
    } on SocketException catch (soe) {
      print("== SocketException ==");
      print(soe);
    } catch (e) {
      print("== Uncaught exception ==");
      print(e);
    }
    return [];
  }

  Future<Generation?> getGenerationData(int id) async {
    try {
      Response<dynamic> generationDataResponse =
          await _client.dio.get('/generation/$id');
      if (generationDataResponse.statusCode == 200) {
        Map<String, dynamic> generationData =
            generationDataResponse.data as Map<String, dynamic>;
        print(generationData['main_region']);
      } else {
        print('No data returned on getGenerationsData');
        throw Exception('No data returned!');
      }
    } on DioException catch (dioe) {
      print("== DioException ==");
      print(dioe);
    } on SocketException catch (soe) {
      print("== SocketException ==");
      print(soe);
    } catch (e) {
      print("== Uncaught exception ==");
      print(e);
    }
    return null;
  }
}
