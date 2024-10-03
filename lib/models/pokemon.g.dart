// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      pokemonColor: json['pokemonColor'] as String,
      officialArtworkUrl: json['officialArtworkUrl'] as String,
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pokemonColor': instance.pokemonColor,
      'officialArtworkUrl': instance.officialArtworkUrl,
    };
