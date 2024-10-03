// import 'package:flutterdex/models/pokemon_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  final int id;
  final String name;
  final String
      pokemonColor; // Temporary String -> Wait for future implementations
  final String officialArtworkUrl;
  // final List<PokemonType> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.pokemonColor,
    required this.officialArtworkUrl,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  // initial abilities list
  // moves
  // assets -> cries, png, gif -> sprites (front_default, official_artwork->front_default showdown->front_default gif)
  // weight, height, etc
  // stats
}
