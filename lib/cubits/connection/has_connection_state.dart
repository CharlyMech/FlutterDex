abstract class HasConnectionState {}

class HasConnectionInit extends HasConnectionState {}

class HasConnectionConnecting extends HasConnectionState {}

class IsConnected extends HasConnectionState {}

class IsNotConnected extends HasConnectionState {}
