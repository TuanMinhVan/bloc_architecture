part of 'login_bloc.dart';

@freezed
class LoginState extends BaseState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = LoginSuccess;
  const factory LoginState.error(String message) = _Error;

  String? get errorMessage {
    return maybeMap(
      error: (e) => e.message,
      orElse: () => null,
    );
  }
}
