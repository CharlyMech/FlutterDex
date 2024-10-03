// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Generation _$GenerationFromJson(Map<String, dynamic> json) => Generation(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      mainRegion: json['mainRegion'] as String,
      pokemonList: (json['pokemonList'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerationToJson(Generation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mainRegion': instance.mainRegion,
      'pokemonList': instance.pokemonList,
    };
