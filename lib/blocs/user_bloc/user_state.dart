part of 'user_bloc.dart';

class UserState extends BaseState {
  const UserState();
}

class UserLoading extends UserState {
  const UserLoading();
}

class UserLoaded extends UserState {
  const UserLoaded(this.data);
  final UserListResponse data;
}

class UserError extends UserState {
  const UserError(this.message);
  final String message;
}
