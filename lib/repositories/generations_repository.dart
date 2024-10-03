import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutterdex/models/generation.dart';
import 'package:flutterdex/models/pokemon.dart';
import 'package:flutterdex/utils/dio_client.dart';

class GenerationRepository {
  late final DioClient _client;
  final String _baseUrl = '/generation';

  GenerationRepository() {
    _client = DioClient();
  }

  Future<List<Generation?>> getAllGenerations() async {
    try {
      Response<dynamic> generationsListResponse =
          await _client.dio.get(_baseUrl);
      if (generationsListResponse.statusCode != 200) {
        print('No data returned on getGenerationsData');
        throw Exception('No data returned!');
      }
      List<dynamic> generationsListData =
          (generationsListResponse.data as Map<String, dynamic>)['results'];
      List<Generation?> generationsList =
          await Future.wait(generationsListData.map((element) {
        String generationIdUrlString = element['url'].replaceAll('/', '');
        int generationId =
            int.parse(generationIdUrlString[generationIdUrlString.length - 1]);
        print("== == == == ==");
        print(element);
        print('$generationId + ${generationId.runtimeType}');
        print(generationIdUrlString);
        return getGenerationData(generationId);
      }));
      return generationsList;
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
    print('getAllGenerations');
    return [];
  }

  Future<Generation?> getGenerationData(int id) async {
    try {
      Response<dynamic> generationDataResponse =
          await _client.dio.get('/generation/$id');
      if (generationDataResponse.statusCode == 200) {
        Map<String, dynamic> generationData =
            generationDataResponse.data as Map<String, dynamic>;
        int id = generationData['id'];
        String name = generationData['name'];
        String mainRegion = generationData['main_region']['name'];
        List<dynamic> pokemonListData = generationData['pokemon_species'];
        List<Pokemon?> pokemonList = await Future.wait(pokemonListData
            .map((species) => getPokemonData(species['name']))
            .toList());

        return Generation(
            id: id,
            name: name,
            mainRegion: mainRegion,
            pokemonList: pokemonList);
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
    print('getGenerationData');
    return null;
  }

  Future<Pokemon?> getPokemonData(String? name) async {
    try {
      Response<dynamic> pokemonResponse;
      Response<dynamic> pokemonSpeciesResponse;
      pokemonResponse = await _client.dio.get('/pokemon/$name');
      pokemonSpeciesResponse = await _client.dio.get('/pokemon-species/$name');

      if (pokemonResponse.statusCode == 200 &&
          pokemonSpeciesResponse.statusCode == 200) {
        Map<String, dynamic> pokemon =
            pokemonResponse.data as Map<String, dynamic>;
        Map<String, dynamic> pokemonSpecies =
            pokemonSpeciesResponse.data as Map<String, dynamic>;
        return Pokemon(
            id: pokemon['id'],
            name: pokemon['name'],
            pokemonColor: pokemonSpecies['color']['name'],
            officialArtworkUrl: pokemon['sprites']['front_default']);
      } else {
        print('No data returned on getPokemonData');
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
    print('getPokemonData');
    return null;
  }
}
