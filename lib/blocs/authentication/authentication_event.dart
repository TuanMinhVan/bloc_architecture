part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends BaseEvent {
  const AuthenticationEvent();
}

class AuthenticationCheckEvent extends AuthenticationEvent {
  const AuthenticationCheckEvent();
}

class AuthenticationLoginEvent extends AuthenticationEvent {
  const AuthenticationLoginEvent(this.username, this.password);
  final String username;
  final String password;
}

class AuthenticationLogoutEvent extends AuthenticationEvent {
  const AuthenticationLogoutEvent();
}
