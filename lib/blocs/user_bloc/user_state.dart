part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.loaded(UserListResponse data) = _UserStateLoaded;
  const factory UserState.error(String message) = _UserStateError;
}
