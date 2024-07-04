import 'package:flutterdex/models/pokemon.dart';

class Generation {
  final int id;
  final String name;
  final String mainRegion;
  final List<Pokemon> pokemonList;

  Generation(
      {required this.id,
      required this.name,
      required this.mainRegion,
      required this.pokemonList});
}
