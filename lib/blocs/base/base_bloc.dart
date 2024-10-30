import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/services/injection_container.dart';
import '../../core/utilities/logger.dart';
import '../common/common_bloc.dart';
import 'base_event.dart';

/// Base Bloc class for all blocs in the application.
///
/// This class provides a common structure for all blocs, including:
/// - A default event handler that handles common events like `InitialEvent`, `RefreshEvent`, `ResumeEvent`, and `InActiveEvent`.
/// - Methods for handling specific events like `onInit`, `onRefresh`, `handleEvent`, `onResume`, and `onInActive`.
/// - A `close` method that logs a message when the bloc is closed.
abstract class BaseBloc<S extends BaseEvent, T> extends Bloc<S, T> {
  /// Constructor for the BaseBloc class.
  ///
  /// Takes the initial state of the bloc as an argument.
  BaseBloc(super.initialState);

  /// Called when the bloc is closed.
  ///
  /// This method logs a message when the bloc is closed.
  @override
  Future<void> close() {
    Logger.log(toString(), tag: 'Bloc is close');
    return super.close();
  }

  void startLoading() {
    getIt<CommonBloc>().add(const LoadingVisibilityEvent(isLoading: true));
  }

  void stopLoading() {
    getIt<CommonBloc>().add(const LoadingVisibilityEvent(isLoading: false));
  }
}
