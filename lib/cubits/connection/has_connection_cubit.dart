import 'package:bloc/bloc.dart';
import 'package:flutterdex/cubits/connection/has_connection_state.dart';
import 'package:flutterdex/repository/has_connection_repository.dart';

class HasConnectionCubit extends Cubit<HasConnectionState> {
  final HasConnectionRepository connectionRepository;
  HasConnectionCubit(this.connectionRepository) : super(HasConnectionInit()) {
    _testConnection();
  }

  void _testConnection() async {
    emit(HasConnectionConnecting());
    bool connected = await connectionRepository.testConnection();
    if (connected) {
      emit(IsConnected());
    } else {
      emit(IsNotConnected());
    }
  }
}
