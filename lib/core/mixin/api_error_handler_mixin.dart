import 'package:dio/dio.dart';

import '../errors/exception.dart';
import '../utilities/typedef.dart';

/// A mixin that handles API errors.
///
/// This mixin provides a `request` method that takes a function that returns a
/// `Future` and handles any `DioException` or other exceptions that may occur.
///
/// The `request` method returns a `ResultFuture` object, which contains either
/// a successful result or an error.
mixin ApiErrorHandlerMixin {
  /// Makes an API call and handles any errors that may occur.
  ///
  /// [apiCall] The function that makes the API call.
  ///
  /// Returns a `ResultFuture` object, which contains either a successful result
  /// or an error.
  ResultFuture<T> request<T>(
    Future<T> apiCall,
  ) async {
    try {
      final result = await apiCall;
      return Result.success(result);
    } on DioException catch (e, stackTrace) {
      return Result.failure(
        error: ApiException.handleError(e),
        stackTrace: stackTrace,
      );
    } catch (e, stackTrace) {
      return Result.failure(
        error: ApiException.handleError(e.toString()),
        stackTrace: stackTrace,
      );
    }
  }
}
