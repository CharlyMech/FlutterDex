import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(Generations()); // Set Generations screen state as default

  void goToGenerations() {
    emit(Generations());
  }

  void goToRegions() {
    emit(Regions());
  }

  void goToItems() {
    emit(Items());
  }
}
