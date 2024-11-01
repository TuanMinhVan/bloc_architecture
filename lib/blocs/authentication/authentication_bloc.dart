import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/routes/app_routes.dart';
import '../../core/routes/app_routes.gr.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/logout_user.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';
import '../base/mixin/persisted_mixin.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_bloc.g.dart';

/// Bloc responsible for managing the authentication state of the application.
///
/// This bloc handles the following events:
/// - [AuthenticationEvent.check]: Checks the authentication state and emits the
///   appropriate state.
/// - [AuthenticationEvent.logout]: Logs the user out and emits the
///   [AuthenticationState.unauthenticated] state.
/// - [AuthenticationEvent.authenticated]: Authenticates the user and emits the
///   [AuthenticationState.authenticated] state.
class AuthenticationBloc
    extends BaseBloc<AuthenticationEvent, AuthenticationState>
    with PersistedStateMixin<AuthenticationState> {
  /// Creates a new instance of the [AuthenticationBloc] class.
  ///
  /// The [logoutUser] parameter is the [LogoutUser] usecase that is used to
  /// log the user out.
  AuthenticationBloc(this.logoutUser) : super(AuthenticationState.unknown()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        check: () => _authenticationCheck(emit),
        logout: () => _logoutUser(emit),
        authenticated: (user) => _authenticated(user, emit),
      );
    });
  }

  /// Completer used to signal when the authentication check is complete.
  Completer<bool> authCheck = Completer<bool>();

  /// The [LogoutUser] usecase.
  final LogoutUser logoutUser;

  /// Handles the [AuthenticationEvent.authenticated] event.
  ///
  /// This method authenticates the user and emits the
  /// [AuthenticationState.authenticated] state.
  Future<void> _authenticated(
    User user,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.authenticated(user));
    await save();
    _setAuthCheck();
  }

  /// Sets the authentication check completer.
  ///
  /// This method is called when the authentication state changes.
  void _setAuthCheck() {
    if (authCheck.isCompleted) {
      authCheck = Completer<bool>();
    }
    authCheck.complete(state.status == AuthenticationStatus.authenticated);
  }

  /// Handles the [AuthenticationEvent.check] event.
  ///
  /// This method checks the authentication state and emits the appropriate
  /// state.
  Future<void> _authenticationCheck(
    Emitter<AuthenticationState> emit,
  ) async {
    final state = await load();
    if (state != null) {
      emit(state);
    }
    _setAuthCheck();
  }

  /// Handles the [AuthenticationEvent.logout] event.
  ///
  /// This method logs the user out and emits the
  /// [AuthenticationState.unauthenticated] state.
  Future<void> _logoutUser(Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.unauthenticated());
    await save();
    _setAuthCheck();
    appRouter.pushAndPopUntil(LoginRoute(), predicate: (_) => false);
  }

  /// The cache key for the authentication state.
  @override
  String get cacheKey => 'ff_authentication_state';

  /// Converts the authentication state to a JSON map.
  @override
  Map<String, dynamic> toJson() => state.toJson();

  /// Converts a JSON map to an authentication state.
  @override
  FutureOr<AuthenticationState> fromJson(Map<String, dynamic> json) {
    return AuthenticationState.fromJson(json);
  }
}
