import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/models/generation.dart';
import 'package:flutterdex/repositories/navigation_repository.dart';

class NavigationCubit extends Cubit<NavigationState> {
  final NavigationRepository navigationRepository;
  NavigationCubit(this.navigationRepository)
      : super(
            NavigationStateInitial()); // Set Generations screen state as default

  void fetchInitialData() {
    emit(NavigationStateLoading());
    goToGenerations();
  }

  void goToGenerations() async {
    print("== Go to Generations Screen ==");
    List<dynamic> generationsListData =
        await navigationRepository.getAllGenerations();
    if (generationsListData.isEmpty)
      emit(NavigationStateError(
          error: "An error occurred while fetching the data"));

    List<dynamic> gen = generationsListData.map((element) {
      int generationId = generationsListData.indexOf(element) + 1;
      navigationRepository.getGenerationData(generationId);
    }).toList();
    emit(NavigationStateGenerations());
  }

  void goToRegions() {
    print("== Go to Regions Screen ==");

    emit(NavigationStateRegions());
  }

  void goToItems() {
    print("== Go to Items Screen ==");

    emit(NavigationStateItems());
  }
}
