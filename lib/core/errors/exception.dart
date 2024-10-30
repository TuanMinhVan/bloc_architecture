import 'dart:io';

import 'package:dio/dio.dart';

enum ApiErrorType {
  noInternet,
  unauthorized,
  badRequest,
  forbidden,
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  badGateway,
  serviceUnavailable,
  cancel,
  connectionError,
  tooManyRequests,
  contentNotAcceptable,
  notFound,
  serverError,
  unknown,
  response,
}

class ResponseCode {
  static const int ok = 200;
  static const int created = 201;

  // Client Errors (4xx)
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int contentNotAcceptable = 422;
  static const int tooManyRequests = 429;

  // Server Errors (5xx)
  static const int internalServerError = 500;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;
  static const int gatewayTimeout = 504;
}

class ApiException implements Exception {
  ApiException({
    required this.message,
    this.data,
    this.code,
    this.errorType,
  });

  factory ApiException.handleError(dynamic exception) {
    /// if the exception is a Response object
    if (exception is Response) {
      switch (exception.statusCode) {
        case ResponseCode.ok:
          return ApiException(
            message: exception.data['message'] ?? '',
            data: exception.data,
            errorType: ApiErrorType.response,
          );

        // Client Errors (4xx)
        case ResponseCode.badRequest:
        case ResponseCode.unauthorized:
        case ResponseCode.forbidden:
        case ResponseCode.notFound:
        case ResponseCode.contentNotAcceptable:
        case ResponseCode.tooManyRequests:
        // Server Errors (5xx)
        case ResponseCode.internalServerError:
        case ResponseCode.badGateway:
        case ResponseCode.serviceUnavailable:
        case ResponseCode.gatewayTimeout:
          return _handlerErrorCode(exception.statusCode, exception.data);

        /// Add more cases if needed
        default:
          return ApiException(
            code: exception.statusCode,
            message: 'Unknown Error',
            errorType: ApiErrorType.unknown,
          );
      }
    } else if (exception is DioException) {
      if (exception.error is SocketException) {
        return ApiException(
          message:
              'No internet connection, please check your connection and try again',
          errorType: ApiErrorType.noInternet,
        );
      }
      if (exception.response?.statusCode != null) {
        return _handlerErrorCode(
          exception.response?.statusCode,
          exception.response?.data,
          exception.response?.headers,
        );
      }

      switch (exception.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
          return ApiException(
            message: 'Connection Error, please try again',
            errorType: ApiErrorType.connectionError,
            code: exception.response?.statusCode,
          );

        default:
      }
    }

    /// if the exception is a String
    return ApiException(
      message: exception.toString(),
      errorType: ApiErrorType.unknown,
    );
  }
  String message;
  dynamic data;
  int? code;
  ApiErrorType? errorType;

  bool get isResponseError => errorType == ApiErrorType.response;

  @override
  String toString() {
    return 'ApiException: $message $code $errorType $data';
  }
}

/// Create an exception for the case of Cancel
class RequestCancelledException implements Exception {
  RequestCancelledException([this.message]);
  final String? message;

  @override
  String toString() {
    return 'RequestCancelledException: $message';
  }
}

ApiException _handlerErrorCode(int? statusCode, data, [Headers? headers]) {
  switch (statusCode) {
    case ResponseCode.badRequest:
      return ApiException(
        message: 'Bad Request',
        data: data,
        errorType: ApiErrorType.badRequest,
        code: statusCode,
      );
    case ResponseCode.unauthorized:
      return ApiException(
        message: 'Unauthorized',
        data: data,
        errorType: ApiErrorType.unauthorized,
        code: statusCode,
      );
    case ResponseCode.forbidden:
      return ApiException(
        message: headers?.value('x-status-reason') ?? 'Forbidden',
        data: data,
        errorType: ApiErrorType.forbidden,
        code: statusCode,
      );
    case ResponseCode.notFound:
      return ApiException(
        message: 'Not Found',
        data: data,
        errorType: ApiErrorType.notFound,
        code: statusCode,
      );
    case ResponseCode.internalServerError:
      return ApiException(
        message: 'Internal Server Error',
        data: data,
        errorType: ApiErrorType.serverError,
        code: statusCode,
      );
    case ResponseCode.serviceUnavailable:
      return ApiException(
        message: 'Service Unavailable',
        data: data,
        errorType: ApiErrorType.serviceUnavailable,
        code: statusCode,
      );
    case ResponseCode.tooManyRequests:
      return ApiException(
        message: 'Too Many Requests',
        data: data,
        errorType: ApiErrorType.tooManyRequests,
        code: statusCode,
      );
    case ResponseCode.contentNotAcceptable:
      return ApiException(
        message: 'Content Not Acceptable',
        data: data,
        errorType: ApiErrorType.contentNotAcceptable,
        code: statusCode,
      );
    case ResponseCode.badGateway:
      return ApiException(
        message: 'Bad Gateway',
        data: data,
        errorType: ApiErrorType.badGateway,
        code: statusCode,
      );
    case ResponseCode.ok:
      return ApiException(
        message: 'Success',
        data: data,
        errorType: ApiErrorType.response,
        code: statusCode,
      );

    default:
      return ApiException(
        code: statusCode,
        message: 'Unknown Error',
        data: data,
        errorType: ApiErrorType.unknown,
      );
  }
}
