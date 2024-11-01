// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingVisibility,
    required TResult Function(LifecycleState lifecycleState) appLifecycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingVisibility,
    TResult? Function(LifecycleState lifecycleState)? appLifecycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingVisibility,
    TResult Function(LifecycleState lifecycleState)? appLifecycle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingVisibility value) loadingVisibility,
    required TResult Function(_AppLifecycleEvent value) appLifecycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingVisibility value)? loadingVisibility,
    TResult? Function(_AppLifecycleEvent value)? appLifecycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingVisibility value)? loadingVisibility,
    TResult Function(_AppLifecycleEvent value)? appLifecycle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonEventCopyWith<$Res> {
  factory $CommonEventCopyWith(
          CommonEvent value, $Res Function(CommonEvent) then) =
      _$CommonEventCopyWithImpl<$Res, CommonEvent>;
}

/// @nodoc
class _$CommonEventCopyWithImpl<$Res, $Val extends CommonEvent>
    implements $CommonEventCopyWith<$Res> {
  _$CommonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingVisibilityImplCopyWith<$Res> {
  factory _$$LoadingVisibilityImplCopyWith(_$LoadingVisibilityImpl value,
          $Res Function(_$LoadingVisibilityImpl) then) =
      __$$LoadingVisibilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingVisibilityImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$LoadingVisibilityImpl>
    implements _$$LoadingVisibilityImplCopyWith<$Res> {
  __$$LoadingVisibilityImplCopyWithImpl(_$LoadingVisibilityImpl _value,
      $Res Function(_$LoadingVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingVisibilityImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityImpl implements _LoadingVisibility {
  const _$LoadingVisibilityImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CommonEvent.loadingVisibility(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityImplCopyWith<_$LoadingVisibilityImpl> get copyWith =>
      __$$LoadingVisibilityImplCopyWithImpl<_$LoadingVisibilityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingVisibility,
    required TResult Function(LifecycleState lifecycleState) appLifecycle,
  }) {
    return loadingVisibility(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingVisibility,
    TResult? Function(LifecycleState lifecycleState)? appLifecycle,
  }) {
    return loadingVisibility?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingVisibility,
    TResult Function(LifecycleState lifecycleState)? appLifecycle,
    required TResult orElse(),
  }) {
    if (loadingVisibility != null) {
      return loadingVisibility(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingVisibility value) loadingVisibility,
    required TResult Function(_AppLifecycleEvent value) appLifecycle,
  }) {
    return loadingVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingVisibility value)? loadingVisibility,
    TResult? Function(_AppLifecycleEvent value)? appLifecycle,
  }) {
    return loadingVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingVisibility value)? loadingVisibility,
    TResult Function(_AppLifecycleEvent value)? appLifecycle,
    required TResult orElse(),
  }) {
    if (loadingVisibility != null) {
      return loadingVisibility(this);
    }
    return orElse();
  }
}

abstract class _LoadingVisibility implements CommonEvent {
  const factory _LoadingVisibility(final bool isLoading) =
      _$LoadingVisibilityImpl;

  bool get isLoading;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingVisibilityImplCopyWith<_$LoadingVisibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppLifecycleEventImplCopyWith<$Res> {
  factory _$$AppLifecycleEventImplCopyWith(_$AppLifecycleEventImpl value,
          $Res Function(_$AppLifecycleEventImpl) then) =
      __$$AppLifecycleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LifecycleState lifecycleState});
}

/// @nodoc
class __$$AppLifecycleEventImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$AppLifecycleEventImpl>
    implements _$$AppLifecycleEventImplCopyWith<$Res> {
  __$$AppLifecycleEventImplCopyWithImpl(_$AppLifecycleEventImpl _value,
      $Res Function(_$AppLifecycleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifecycleState = null,
  }) {
    return _then(_$AppLifecycleEventImpl(
      null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as LifecycleState,
    ));
  }
}

/// @nodoc

class _$AppLifecycleEventImpl implements _AppLifecycleEvent {
  const _$AppLifecycleEventImpl(this.lifecycleState);

  @override
  final LifecycleState lifecycleState;

  @override
  String toString() {
    return 'CommonEvent.appLifecycle(lifecycleState: $lifecycleState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLifecycleEventImpl &&
            (identical(other.lifecycleState, lifecycleState) ||
                other.lifecycleState == lifecycleState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lifecycleState);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLifecycleEventImplCopyWith<_$AppLifecycleEventImpl> get copyWith =>
      __$$AppLifecycleEventImplCopyWithImpl<_$AppLifecycleEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingVisibility,
    required TResult Function(LifecycleState lifecycleState) appLifecycle,
  }) {
    return appLifecycle(lifecycleState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingVisibility,
    TResult? Function(LifecycleState lifecycleState)? appLifecycle,
  }) {
    return appLifecycle?.call(lifecycleState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingVisibility,
    TResult Function(LifecycleState lifecycleState)? appLifecycle,
    required TResult orElse(),
  }) {
    if (appLifecycle != null) {
      return appLifecycle(lifecycleState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingVisibility value) loadingVisibility,
    required TResult Function(_AppLifecycleEvent value) appLifecycle,
  }) {
    return appLifecycle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingVisibility value)? loadingVisibility,
    TResult? Function(_AppLifecycleEvent value)? appLifecycle,
  }) {
    return appLifecycle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingVisibility value)? loadingVisibility,
    TResult Function(_AppLifecycleEvent value)? appLifecycle,
    required TResult orElse(),
  }) {
    if (appLifecycle != null) {
      return appLifecycle(this);
    }
    return orElse();
  }
}

abstract class _AppLifecycleEvent implements CommonEvent {
  const factory _AppLifecycleEvent(final LifecycleState lifecycleState) =
      _$AppLifecycleEventImpl;

  LifecycleState get lifecycleState;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLifecycleEventImplCopyWith<_$AppLifecycleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonState {
  bool get isLoading => throw _privateConstructorUsedError;
  LifecycleState get appLifecycleState => throw _privateConstructorUsedError;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call({bool isLoading, LifecycleState appLifecycleState});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? appLifecycleState = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      appLifecycleState: null == appLifecycleState
          ? _value.appLifecycleState
          : appLifecycleState // ignore: cast_nullable_to_non_nullable
              as LifecycleState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, LifecycleState appLifecycleState});
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? appLifecycleState = null,
  }) {
    return _then(_$CommonStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      appLifecycleState: null == appLifecycleState
          ? _value.appLifecycleState
          : appLifecycleState // ignore: cast_nullable_to_non_nullable
              as LifecycleState,
    ));
  }
}

/// @nodoc

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl(
      {required this.isLoading, required this.appLifecycleState});

  @override
  final bool isLoading;
  @override
  final LifecycleState appLifecycleState;

  @override
  String toString() {
    return 'CommonState(isLoading: $isLoading, appLifecycleState: $appLifecycleState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.appLifecycleState, appLifecycleState) ||
                other.appLifecycleState == appLifecycleState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, appLifecycleState);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState(
      {required final bool isLoading,
      required final LifecycleState appLifecycleState}) = _$CommonStateImpl;

  @override
  bool get isLoading;
  @override
  LifecycleState get appLifecycleState;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
