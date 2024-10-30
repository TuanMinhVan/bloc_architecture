part of 'common_bloc.dart';

sealed class CommonEvent extends BaseEvent {
  const CommonEvent();
}

@freezed
class LoadingVisibilityEvent extends CommonEvent with _$LoadingVisibilityEvent {
  const factory LoadingVisibilityEvent({
    required bool isLoading,
  }) = _LoadingVisibilityEvent;
}
