import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../blocs/authentication/authentication_bloc.dart';
import '../../blocs/common/common_bloc.dart';
import '../../blocs/preferences/preferences_bloc.dart';
import '../../data/datasource/auth_local_data_source.dart';
import '../../data/datasource/auth_remote_data_source.dart';
import '../../data/datasource/user_remote_data_source.dart';
import '../../data/repositories/authentication_repository_impl.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/create_user.dart';
import '../../domain/usecases/get_users.dart';
import '../../domain/usecases/login_user.dart';
import '../../domain/usecases/logout_user.dart';
import '../config.dart';
import '../utilities/preferences.dart';
import 'auth_service.dart';
import 'user_service.dart';

/// GetIt instance for dependency injection.
final getIt = GetIt.instance;

/// Connection timeout for API requests.
const connectTimeout = Duration(seconds: 10);

/// Receive timeout for API requests.
const receiveTimeout = Duration(seconds: 10);

/// Send timeout for API requests.
const sendTimeout = Duration(seconds: 10);

/// Dio instance for API requests.
final Dio dio = Dio(
  BaseOptions(
    baseUrl: Configs.baseUrl,
    connectTimeout: connectTimeout,
    receiveTimeout: receiveTimeout,
    sendTimeout: sendTimeout,
  ),
)..interceptors.addAll(
    [
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: false,
        responseBody: false,
        request: false,
        logPrint: (log) => Logger.log(log.toString(), tag: 'API'),
      ),
    ],
  );

/// Initializes the dependency injection container.
void init() async {
  registerBlocs();
  registerUseCases();
  registerRepositories();
  registerExternal();
  registerUserManagement();
}

/// Registers all blocs in the dependency injection container.
void registerBlocs() {
  getIt
    ..registerLazySingleton(() => CommonBloc())
    ..registerLazySingleton(() => PreferencesBloc())
    ..registerLazySingleton(
      () => AuthenticationBloc(getIt<LogoutUser>()),
    );
}

/// Registers all use cases in the dependency injection container.
void registerUseCases() {
  getIt
    ..registerLazySingleton(() => LoginUser(getIt()))
    ..registerLazySingleton(() => LogoutUser(getIt()));
}

/// Registers all repositories in the dependency injection container.
void registerRepositories() {
  getIt
    ..registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(getIt(), getIt()),
    )
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(getIt<AuthService>()),
    )
    ..registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSource(getIt()),
    );
}

/// Registers all external dependencies in the dependency injection container.
void registerExternal() {
  getIt
    ..registerLazySingleton(() => secureStorage)
    ..registerLazySingleton(() => dio)
    ..registerLazySingleton(() => AuthService(dio))
    ..registerLazySingleton(() => UserService(dio));
}

/// Registers all user management dependencies in the dependency injection container.
void registerUserManagement() {
  getIt
    ..registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSource(getIt<UserService>()),
    )
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(getIt<UserRemoteDataSource>()),
    )
    ..registerLazySingleton(() => CreateUser(getIt<UserRepository>()))
    ..registerLazySingleton(() => GetUsers(getIt<UserRepository>()));
}
