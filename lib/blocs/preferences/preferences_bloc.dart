import 'dart:async';
import 'dart:convert';
import 'dart:ui';

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

/// Bloc for managing user preferences.
///
/// This bloc handles loading and saving user preferences.
/// It uses the `PersistedStateMixin` to persist the state to local storage.
class PreferencesBloc extends BaseBloc<PreferencesEvent, PreferencesState>
    with PersistedStateMixin<PreferencesState> {
  /// Creates a new instance of the `PreferencesBloc`.
  PreferencesBloc() : super(PreferencesState.loaded()) {
    on<PreferencesEvent>((event, emit) async {
      await event.when(
        initial: () => _initialize(emit),
        changeLocale: (locale) => _changeLocale(locale, emit),
      );
    });
  }

  /// Initializes the bloc by loading the persisted state.
  Future<void> _initialize(Emitter<PreferencesState> emit) async {
    final newState = await load();
    if (newState != null) {
      emit(newState);
    }
  }

  /// Handles the `ChangeLocale` event.
  ///
  /// Updates the locale in the state and saves the new state to local storage.
  Future<void> _changeLocale(
    Locale locale,
    Emitter<PreferencesState> emit,
  ) async {
    emit(state.copyWith(locale: locale));
    await save();
  }

  /// The cache key used to store the persisted state.
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
