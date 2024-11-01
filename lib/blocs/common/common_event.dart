part of 'common_bloc.dart';

@freezed
class CommonEvent extends BaseEvent with _$CommonEvent {
  const factory CommonEvent.loadingVisibility(bool isLoading) =
      _LoadingVisibility;
  const factory CommonEvent.appLifecycle(LifecycleState lifecycleState) =
      _AppLifecycleEvent;
}
