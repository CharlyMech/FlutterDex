import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/models/generation.dart';
import 'package:flutterdex/models/navigation_item.dart';
import 'package:flutterdex/repositories/generations_repository.dart';
import 'package:flutterdex/repositories/navigation_repository.dart';

class NavigationCubit extends Cubit<NavigationState> {
  final NavigationRepository navigationRepository;
  NavigationCubit(this.navigationRepository)
      : super(
            NavigationStateInitial()); // Set Generations screen state as default

  void fetchInitialData() {
    emit(NavigationStateLoading());
    // Maybe not needed
    //* TEMPORARY
    emit(NavigationStateGenerations(generationsList: []));
    // goToGenerations();
  }

  void goToGenerations() async {
    print("== Go to Generations Screen ==");
    GenerationRepository generationRepository = GenerationRepository();
    List<Generation?> generationsListData = []; // TEMPORARY
    /* List<Generation?> generationsListData =
        await generationRepository.getAllGenerations();
    if (generationsListData.isEmpty) {
      emit(NavigationStateError(
          error: "An error occurred while fetching the data"));
      return;
    } */
    emit(NavigationStateGenerations(generationsList: generationsListData));
  }

  void goToRegions() {
    print("== Go to Regions Screen ==");

    emit(NavigationStateRegions());
  }

  void goToItems() {
    print("== Go to Items Screen ==");

    emit(NavigationStateItems());
  }

  void navigateTo(ScreenEnum screen) {
    switch (screen) {
      case ScreenEnum.generations:
        goToGenerations();
        break;
      case ScreenEnum.regions:
        goToRegions();
        break;
      case ScreenEnum.items:
        goToItems();
        break;
      case ScreenEnum.menu:
        print('print from cubit flie for menu');
        break;
    }
  }
}
