import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../core/errors/exception.dart';
import '../../core/routes/app_routes.dart';
import '../../core/routes/app_routes.gr.dart';
import '../../domain/usecases/check_authentication.dart';
import '../../domain/usecases/login_user.dart';
import '../../domain/usecases/logout_user.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

/// Authentication Bloc
///
/// This bloc handles the authentication logic of the application.
/// It manages the user's login, registration, and logout.
class AuthenticationBloc
    extends BaseBloc<AuthenticationEvent, AuthenticationState> {
  /// Constructor for the AuthenticationBloc
  ///
  /// Takes the following parameters:
  /// - createUser: A [CreateUser] usecase to create a new user.
  /// - getUsers: A [GetUsers] usecase to get all users.
  /// - loginUser: A [LoginUser] usecase to login a user.
  /// - checkAuthentication: A [CheckAuthentication] usecase to check if the user is authenticated.
  AuthenticationBloc({
    required this.loginUser,
    required this.checkAuthentication,
    required this.logoutUser,
  }) : super(
          const AuthenticationState(isAuthenticated: false),
        ) {
    on<AuthenticationCheckEvent>(_authenticationCheck);
    on<AuthenticationLogoutEvent>(_logoutUser);
    on<AuthenticationLoginEvent>(_login);
  }

  /// The [LoginUser] usecase.
  final LoginUser loginUser;

  /// The [LogoutUser] usecase.
  final LogoutUser logoutUser;

  /// The [CheckAuthentication] usecase.
  final CheckAuthentication checkAuthentication;

  /// Called when the bloc is initialized.
  ///
  /// Checks if the user is already authenticated.
  /// If the user is authenticated, the [AuthenticationState] is updated.
  Future<void> _authenticationCheck(
    AuthenticationCheckEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final isLoggedIn = await checkAuthentication.call();
    emit(AuthenticationState(isAuthenticated: isLoggedIn));
  }

  Future<void> _logoutUser(_, Emitter<AuthenticationState> emit) async {
    startLoading();
    await logoutUser.call();
    emit(const AuthenticationState());
    stopLoading();

    appRouter.pushAndPopUntil(LoginRoute(), predicate: (_) => false);
  }

  /// Logs in the user.
  ///
  /// Takes the following parameters:
  /// - emit: The [Emitter] to emit the new state.
  /// - username: The username of the user.
  /// - password: The password of the user.
  Future<void> _login(
    AuthenticationLoginEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    startLoading();
    emit(const AuthenticationStateLoading());
    final params = LoginParam(
      username: event.username,
      password: event.password,
    );
    final result = await loginUser.call(params);
    stopLoading();
    result.when(
      success: (data) {
        emit(const AuthenticationState(isAuthenticated: true));
      },
      failure: (error, _) {
        emit(AuthenticationLoginFailure(error));
      },
    );
  }
}
