part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent extends BaseEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.check() = _Check;
  const factory AuthenticationEvent.logout() = _Logout;
  const factory AuthenticationEvent.authenticated(User user) = _Authenticated;
}
