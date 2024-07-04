import 'dart:ui';

import 'package:flutterdex/models/pokemon_type.dart';

class Pokemon {
  final int id;
  final String name;
  final Color pokemonColor;
  final String officialArtworkUrl;
  final List<PokemonType> types;

  Pokemon(
      {required this.id,
      required this.name,
      required this.pokemonColor,
      required this.officialArtworkUrl,
      required this.types});

  // initial abilities list
  // moves
  // assets -> cries, png, gif -> sprites (front_default, official_artwork->front_default showdown->front_default gif)
  // weight, height, etc
  // stats
}
