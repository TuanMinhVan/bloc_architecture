part of 'authentication_bloc.dart';

// Authentication States
class AuthenticationState extends BaseState {
  const AuthenticationState({this.isAuthenticated = false});
  final bool isAuthenticated;
}

class AuthenticationStateLoading extends AuthenticationState {
  const AuthenticationStateLoading() : super(isAuthenticated: false);
}

/// Login failed state

class AuthenticationLoginFailure extends AuthenticationState {
  const AuthenticationLoginFailure(this.error) : super(isAuthenticated: false);

  final ApiException error;

  String get message {
    if (error.data != null && error.data is Map) {
      final data = error.data as Map<String, dynamic>;
      return data['message'];
    }
    return error.message;
  }
}
