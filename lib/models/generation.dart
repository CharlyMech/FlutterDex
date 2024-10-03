import 'package:flutterdex/models/pokemon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generation.g.dart';

@JsonSerializable()
class Generation {
  final int id;
  final String name;
  final String mainRegion; // Future implementation -> Region model
  final List<Pokemon?> pokemonList;

  Generation(
      {required this.id,
      required this.name,
      required this.mainRegion,
      required this.pokemonList});

  factory Generation.fromJson(Map<String, dynamic> json) =>
      _$GenerationFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationToJson(this);
}
