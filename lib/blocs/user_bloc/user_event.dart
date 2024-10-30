part of 'user_bloc.dart';

sealed class UserEvent extends BaseEvent {
  const UserEvent();
}

class UserGetEvent extends UserEvent {
  const UserGetEvent();
}
