part of 'user_bloc.dart';

@freezed
class UserEvent extends BaseEvent with _$UserEvent {
  const factory UserEvent.getUser() = _GetUser;
}
