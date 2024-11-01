import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/get_users.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

/// Bloc for managing user data.
///
/// This bloc handles fetching user data from the repository.
/// It uses the `GetUsers` usecase to retrieve the data.
class UserBloc extends BaseBloc<UserEvent, UserState> {
  /// Creates a new instance of the `UserBloc`.
  ///
  /// Takes a `GetUsers` usecase as a parameter.
  UserBloc(this.getUsers) : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getUser: () => _onUserGet(emit),
      );
    });
  }

  /// The `GetUsers` usecase used to retrieve user data.
  final GetUsers getUsers;

  /// Handles the `UserEvent.getUser` event.
  ///
  /// Fetches user data from the repository using the `GetUsers` usecase.
  /// Emits a `UserState.loading` state while fetching the data.
  /// Emits a `UserState.loaded` state if the data is fetched successfully.
  /// Emits a `UserState.error` state if an error occurs while fetching the data.
  Future<void> _onUserGet(Emitter<UserState> emit) async {
    emit(const UserState.loading());
    final result = await getUsers.call();
    result.when(
      success: (data) {
        emit(UserState.loaded(data));
      },
      failure: (error, _) {
        emit(UserState.error(error.message));
      },
    );
  }
}
