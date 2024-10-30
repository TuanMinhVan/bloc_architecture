import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';

part 'common_event.dart';
part 'common_state.dart';
part 'common_bloc.freezed.dart';

/// A bloc that handles common events and states.
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  /// Creates a new instance of [CommonBloc].
  CommonBloc() : super(const CommonState()) {
    on<LoadingVisibilityEvent>(_onLoadingVisibility);
  }

  void _onLoadingVisibility(
    LoadingVisibilityEvent event,
    Emitter<CommonState> emit,
  ) {
    emit(state.copyWith(isLoading: event.isLoading));
  }
}
