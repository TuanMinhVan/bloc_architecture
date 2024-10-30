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
mixin _$LoadingVisibilityEvent {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of LoadingVisibilityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadingVisibilityEventCopyWith<LoadingVisibilityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingVisibilityEventCopyWith<$Res> {
  factory $LoadingVisibilityEventCopyWith(LoadingVisibilityEvent value,
          $Res Function(LoadingVisibilityEvent) then) =
      _$LoadingVisibilityEventCopyWithImpl<$Res, LoadingVisibilityEvent>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoadingVisibilityEventCopyWithImpl<$Res,
        $Val extends LoadingVisibilityEvent>
    implements $LoadingVisibilityEventCopyWith<$Res> {
  _$LoadingVisibilityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingVisibilityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingVisibilityEventImplCopyWith<$Res>
    implements $LoadingVisibilityEventCopyWith<$Res> {
  factory _$$LoadingVisibilityEventImplCopyWith(
          _$LoadingVisibilityEventImpl value,
          $Res Function(_$LoadingVisibilityEventImpl) then) =
      __$$LoadingVisibilityEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingVisibilityEventImplCopyWithImpl<$Res>
    extends _$LoadingVisibilityEventCopyWithImpl<$Res,
        _$LoadingVisibilityEventImpl>
    implements _$$LoadingVisibilityEventImplCopyWith<$Res> {
  __$$LoadingVisibilityEventImplCopyWithImpl(
      _$LoadingVisibilityEventImpl _value,
      $Res Function(_$LoadingVisibilityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingVisibilityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingVisibilityEventImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityEventImpl implements _LoadingVisibilityEvent {
  const _$LoadingVisibilityEventImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoadingVisibilityEvent(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityEventImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of LoadingVisibilityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityEventImplCopyWith<_$LoadingVisibilityEventImpl>
      get copyWith => __$$LoadingVisibilityEventImplCopyWithImpl<
          _$LoadingVisibilityEventImpl>(this, _$identity);
}

abstract class _LoadingVisibilityEvent implements LoadingVisibilityEvent {
  const factory _LoadingVisibilityEvent({required final bool isLoading}) =
      _$LoadingVisibilityEventImpl;

  @override
  bool get isLoading;

  /// Create a copy of LoadingVisibilityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingVisibilityEventImplCopyWith<_$LoadingVisibilityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonState {
  int get loadingCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
  $Res call({int loadingCount, bool isLoading});
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
    Object? loadingCount = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({int loadingCount, bool isLoading});
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
    Object? loadingCount = null,
    Object? isLoading = null,
  }) {
    return _then(_$CommonStateImpl(
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl({this.loadingCount = 0, this.isLoading = false});

  @override
  @JsonKey()
  final int loadingCount;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CommonState(loadingCount: $loadingCount, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.loadingCount, loadingCount) ||
                other.loadingCount == loadingCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingCount, isLoading);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState({final int loadingCount, final bool isLoading}) =
      _$CommonStateImpl;

  @override
  int get loadingCount;
  @override
  bool get isLoading;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
