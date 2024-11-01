part of 'common_bloc.dart';

enum LifecycleState {
  none,
  resumed,
  suspended,
}

@freezed
class CommonState extends BaseState with _$CommonState {
  const factory CommonState({
    required bool isLoading,
    required LifecycleState appLifecycleState,
  }) = _CommonState;

  factory CommonState.initial() => const CommonState(
        isLoading: false,
        appLifecycleState: LifecycleState.none,
      );
}
