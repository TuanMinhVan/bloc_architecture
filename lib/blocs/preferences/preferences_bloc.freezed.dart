// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesEventCopyWith<$Res> {
  factory $PreferencesEventCopyWith(
          PreferencesEvent value, $Res Function(PreferencesEvent) then) =
      _$PreferencesEventCopyWithImpl<$Res, PreferencesEvent>;
}

/// @nodoc
class _$PreferencesEventCopyWithImpl<$Res, $Val extends PreferencesEvent>
    implements $PreferencesEventCopyWith<$Res> {
  _$PreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PreferencesEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PreferencesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements _ChangeLocale {
  const _$ChangeLocaleImpl(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'PreferencesEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements PreferencesEvent {
  const factory _ChangeLocale(final Locale locale) = _$ChangeLocaleImpl;

  Locale get locale;

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreferencesState _$PreferencesStateFromJson(Map<String, dynamic> json) {
  return _PreferencesLoaded.fromJson(json);
}

/// @nodoc
mixin _$PreferencesState {
  bool get darkMode => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: PreferencesState._defaultLocaleValue,
      toJson: PreferencesState._localeToJson,
      fromJson: PreferencesState._localeFromJson,
      readValue: PreferencesState._localeReadValue)
  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: ThemeMode.light,
      unknownEnumValue: ThemeMode.light,
      toJson: PreferencesState._themeModeToJson,
      fromJson: PreferencesState._themeModeFromJson)
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  /// Serializes this PreferencesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesStateCopyWith<PreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res, PreferencesState>;
  @useResult
  $Res call(
      {bool darkMode,
      @JsonKey(
          defaultValue: PreferencesState._defaultLocaleValue,
          toJson: PreferencesState._localeToJson,
          fromJson: PreferencesState._localeFromJson,
          readValue: PreferencesState._localeReadValue)
      Locale locale,
      @JsonKey(
          defaultValue: ThemeMode.light,
          unknownEnumValue: ThemeMode.light,
          toJson: PreferencesState._themeModeToJson,
          fromJson: PreferencesState._themeModeFromJson)
      ThemeMode themeMode});
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res, $Val extends PreferencesState>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesLoadedImplCopyWith<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  factory _$$PreferencesLoadedImplCopyWith(_$PreferencesLoadedImpl value,
          $Res Function(_$PreferencesLoadedImpl) then) =
      __$$PreferencesLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool darkMode,
      @JsonKey(
          defaultValue: PreferencesState._defaultLocaleValue,
          toJson: PreferencesState._localeToJson,
          fromJson: PreferencesState._localeFromJson,
          readValue: PreferencesState._localeReadValue)
      Locale locale,
      @JsonKey(
          defaultValue: ThemeMode.light,
          unknownEnumValue: ThemeMode.light,
          toJson: PreferencesState._themeModeToJson,
          fromJson: PreferencesState._themeModeFromJson)
      ThemeMode themeMode});
}

/// @nodoc
class __$$PreferencesLoadedImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesLoadedImpl>
    implements _$$PreferencesLoadedImplCopyWith<$Res> {
  __$$PreferencesLoadedImplCopyWithImpl(_$PreferencesLoadedImpl _value,
      $Res Function(_$PreferencesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_$PreferencesLoadedImpl(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesLoadedImpl implements _PreferencesLoaded {
  const _$PreferencesLoadedImpl(
      {required this.darkMode,
      @JsonKey(
          defaultValue: PreferencesState._defaultLocaleValue,
          toJson: PreferencesState._localeToJson,
          fromJson: PreferencesState._localeFromJson,
          readValue: PreferencesState._localeReadValue)
      required this.locale,
      @JsonKey(
          defaultValue: ThemeMode.light,
          unknownEnumValue: ThemeMode.light,
          toJson: PreferencesState._themeModeToJson,
          fromJson: PreferencesState._themeModeFromJson)
      required this.themeMode});

  factory _$PreferencesLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesLoadedImplFromJson(json);

  @override
  final bool darkMode;
  @override
  @JsonKey(
      defaultValue: PreferencesState._defaultLocaleValue,
      toJson: PreferencesState._localeToJson,
      fromJson: PreferencesState._localeFromJson,
      readValue: PreferencesState._localeReadValue)
  final Locale locale;
  @override
  @JsonKey(
      defaultValue: ThemeMode.light,
      unknownEnumValue: ThemeMode.light,
      toJson: PreferencesState._themeModeToJson,
      fromJson: PreferencesState._themeModeFromJson)
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'PreferencesState(darkMode: $darkMode, locale: $locale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesLoadedImpl &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, darkMode, locale, themeMode);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesLoadedImplCopyWith<_$PreferencesLoadedImpl> get copyWith =>
      __$$PreferencesLoadedImplCopyWithImpl<_$PreferencesLoadedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesLoadedImplToJson(
      this,
    );
  }
}

abstract class _PreferencesLoaded implements PreferencesState {
  const factory _PreferencesLoaded(
      {required final bool darkMode,
      @JsonKey(
          defaultValue: PreferencesState._defaultLocaleValue,
          toJson: PreferencesState._localeToJson,
          fromJson: PreferencesState._localeFromJson,
          readValue: PreferencesState._localeReadValue)
      required final Locale locale,
      @JsonKey(
          defaultValue: ThemeMode.light,
          unknownEnumValue: ThemeMode.light,
          toJson: PreferencesState._themeModeToJson,
          fromJson: PreferencesState._themeModeFromJson)
      required final ThemeMode themeMode}) = _$PreferencesLoadedImpl;

  factory _PreferencesLoaded.fromJson(Map<String, dynamic> json) =
      _$PreferencesLoadedImpl.fromJson;

  @override
  bool get darkMode;
  @override
  @JsonKey(
      defaultValue: PreferencesState._defaultLocaleValue,
      toJson: PreferencesState._localeToJson,
      fromJson: PreferencesState._localeFromJson,
      readValue: PreferencesState._localeReadValue)
  Locale get locale;
  @override
  @JsonKey(
      defaultValue: ThemeMode.light,
      unknownEnumValue: ThemeMode.light,
      toJson: PreferencesState._themeModeToJson,
      fromJson: PreferencesState._themeModeFromJson)
  ThemeMode get themeMode;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesLoadedImplCopyWith<_$PreferencesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
