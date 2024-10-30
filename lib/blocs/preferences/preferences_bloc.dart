import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/config.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';
import '../base/base_state.dart';
import '../base/mixin/persisted_mixin.dart';

part 'preferences_event.dart';
part 'preferences_state.dart';
part 'preferences_bloc.freezed.dart';
part 'preferences_bloc.g.dart';

/// Bloc for managing application preferences.
///
/// This bloc handles loading, saving, and updating preferences.
/// It uses the `PersistedStateMixin` to persist the state to local storage.
class PreferencesBloc extends BaseBloc<PreferencesEvent, PreferencesState>
    with PersistedStateMixin {
  /// Creates a new instance of the `PreferencesBloc`.
  PreferencesBloc() : super(PreferencesState.loaded()) {
    on<PreferencesEventInitial>(_initialize);
    on<PreferencesEventChangeLocale>(_changeLocale);
  }

  /// Initializes the bloc by loading the persisted state.
  Future<void> _initialize(
    PreferencesEvent event,
    Emitter<PreferencesState> emit,
  ) async {
    final newState = await load();
    if (newState != null) {
      emit(newState);
    }
  }

  void _changeLocale(
    PreferencesEventChangeLocale event,
    Emitter<PreferencesState> emit,
  ) {
    emit(state.copyWith(locale: event.locale));
    save();
  }

  /// The cache key used for persisting the state.
  @override
  String get cacheKey => 'preferences';

  /// Converts a JSON map to a `PreferencesState` object.
  @override
  FutureOr<PreferencesState> fromJson(Map<String, dynamic> json) {
    return PreferencesState.fromJson(json);
  }

  /// Converts the current state to a JSON map.
  @override
  Map<String, dynamic> toJson() => state.toJson();
}
