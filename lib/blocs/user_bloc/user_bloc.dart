import 'package:bloc/bloc.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/get_users.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends BaseBloc<UserEvent, UserState> {
  UserBloc(this.getUsers) : super(const UserState()) {
    on<UserGetEvent>(_onUserGet);
  }

  final GetUsers getUsers;

  Future<void> _onUserGet(UserGetEvent event, Emitter<UserState> emit) async {
    emit(const UserLoading());
    final result = await getUsers.call();
    result.when(
      success: (data) {
        emit(UserLoaded(data));
      },
      failure: (error, _) {
        emit(UserError(error.message));
      },
    );
  }
}
