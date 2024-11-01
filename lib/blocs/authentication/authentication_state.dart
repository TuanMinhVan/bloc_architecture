part of 'authentication_bloc.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

// Authentication States
@freezed
class AuthenticationState extends BaseState with _$AuthenticationState {
  const AuthenticationState._();

  factory AuthenticationState.unknown() => const AuthenticationState();

  factory AuthenticationState.authenticated(User user) => AuthenticationState(
        status: AuthenticationStatus.authenticated,
        user: user,
      );

  factory AuthenticationState.unauthenticated() => const AuthenticationState(
        status: AuthenticationStatus.unauthenticated,
      );

  const factory AuthenticationState({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    User? user,
  }) = _AuthenticationState;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);

  // String? get errorText {
  //   if (error != null) {
  //     if (error!.data != null && error!.data is Map) {
  //       final data = error!.data as Map<String, dynamic>;
  //       return data['message'];
  //     }
  //     return error!.message;
  //   }
  //   return null;
  // }
}
