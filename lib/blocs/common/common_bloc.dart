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
  CommonBloc() : super(CommonState.initial()) {
    on<CommonEvent>((event, emit) {
      event.when(
        loadingVisibility: (isLoading) => _onLoadingVisibility(isLoading, emit),
        appLifecycle: (lifecycleState) => _onAppLifecycle(lifecycleState, emit),
      );
    });
  }

  /// Handles the [LoadingVisibility] event.
  ///
  /// Sets the [isLoading] state to the provided value.
  ///
  /// **Example:**
  /// ```dart
  /// final commonBloc = CommonBloc();
  /// commonBloc.add(LoadingVisibility(isLoading: true));
  /// ```
  void _onLoadingVisibility(
    bool isLoading,
    Emitter<CommonState> emit,
  ) {
    emit(state.copyWith(isLoading: isLoading));
  }

  /// Handles the [AppLifecycle] event.
  ///
  /// Sets the [appLifecycleState] state to the provided value.
  ///
  /// **Example:**
  /// ```dart
  /// final commonBloc = CommonBloc();
  /// commonBloc.add(AppLifecycle(lifecycleState: AppLifecycleState.resumed));
  /// ```
  void _onAppLifecycle(
    LifecycleState lifecycleState,
    Emitter<CommonState> emit,
  ) {
    emit(state.copyWith(appLifecycleState: lifecycleState));
  }
}
