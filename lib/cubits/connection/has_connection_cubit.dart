import 'package:bloc/bloc.dart';
import 'package:flutterdex/cubits/connection/has_connection_state.dart';
import 'package:flutterdex/repositories/has_connection_repository.dart';

class HasConnectionCubit extends Cubit<HasConnectionState> {
  final HasConnectionRepository connectionRepository;
  HasConnectionCubit(this.connectionRepository)
      : super(HasConnectionConnecting()) {
    _testConnection();
  }

  void _testConnection() async {
    bool connected = await connectionRepository.testConnection();
    if (connected) {
      print("- Device connected -");
      emit(IsConnected());
    } else {
      emit(IsNotConnected());
    }
  }
}
