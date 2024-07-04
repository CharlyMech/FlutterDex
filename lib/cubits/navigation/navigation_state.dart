import 'package:flutterdex/models/generation.dart';

abstract class NavigationState {}

class NavigationStateInitial extends NavigationState {}

class NavigationStateLoading extends NavigationState {}

class NavigationStateGenerations extends NavigationState {
  // final List<Generation> generationsList;

  // NavigationStateGenerations({required this.generationsList});
}

class NavigationStateRegions extends NavigationState {}

class NavigationStateItems extends NavigationState {}

class NavigationStateError extends NavigationState {
  final String error;

  NavigationStateError({required this.error});
}
