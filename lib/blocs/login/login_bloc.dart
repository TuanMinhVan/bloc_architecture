import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/services/injection_container.dart';
import '../../domain/usecases/login_user.dart';
import '../authentication/authentication_bloc.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

/// Bloc responsible for handling login events.
///
/// This bloc handles the following events:
/// - [LoginEvent.login]: Logs the user in with the provided username and password.
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  /// Creates a new instance of the [LoginBloc] class.
  ///
  /// The [loginUser] parameter is the [LoginUser] usecase that is used to
  /// log the user in.
  LoginBloc(this.loginUser) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        login: (username, password) => _onLogin(username, password, emit),
      );
    });
  }

  /// The [LoginUser] usecase.
  final LoginUser loginUser;

  final _authBloc = getIt<AuthenticationBloc>();

  /// Handles the [LoginEvent.login] event.
  ///
  /// This method logs the user in with the provided username and password.
  Future<void> _onLogin(
    String username,
    String password,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());
    startLoading();
    final params = LoginParam(username: username, password: password);
    final result = await loginUser.call(params);
    await result.when(
      success: (data) async {
        /// Clear the previous auth check completer
        /// and create a new one
        _authBloc.authCheck = Completer<bool>();

        /// Authenticate the user with the data
        _authBloc.add(AuthenticationEvent.authenticated(data));

        /// wait for the auth check to complete
        await _authBloc.authCheck.future;

        /// emit the success state
        emit(const LoginState.success());
      },
      failure: (error, _) {
        String message = error.message;
        if (error.data is Map) {
          final data = error.data as Map<String, dynamic>;
          message = data['message'] as String;
        }
        emit(LoginState.error(message));
      },
    );
    stopLoading();
  }
}
