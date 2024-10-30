import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/exception.dart';

part 'typedef.freezed.dart';

typedef JsonMapping = Map<String, dynamic>;

typedef ResultFuture<T> = Future<Result<T>>;

typedef ResultVoid = ResultFuture<void>;

@Freezed(copyWith: false, map: FreezedMapOptions(map: false))
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(T data) = Success<T>;

  const factory Result.failure({
    required ApiException error,
    required StackTrace stackTrace,
  }) = Failure<T>;

  static ResultFuture<T> guardFuture<T>(Future<T> Function() future) async {
    try {
      return Result.success(await future());
    } on ApiException catch (e, stackTrace) {
      return Result.failure(error: e, stackTrace: stackTrace);
    } catch (e, stackTrace) {
      return Result.failure(
        error: ApiException.handleError(e.toString()),
        stackTrace: stackTrace,
      );
    }
  }
}
