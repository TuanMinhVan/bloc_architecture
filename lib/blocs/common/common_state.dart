part of 'common_bloc.dart';

@freezed
class CommonState extends BaseState with _$CommonState {
  const factory CommonState({
    @Default(0) int loadingCount,
    @Default(false) bool isLoading,
  }) = _CommonState;
}
