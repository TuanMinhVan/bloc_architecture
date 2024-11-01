import '../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasource/auth_local_data_source.dart';
import '../datasource/auth_remote_data_source.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  const AuthenticationRepositoryImpl(
    this.remoteDataSource,
    this.localDataSource,
  );

  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  @override
  Future<void> logout() => localDataSource.removeToken();

  @override
  ResultFuture<User> authenticate({
    required String username,
    required String password,
  }) {
    return remoteDataSource.authenticate(
      username: username,
      password: password,
    );
  }

  @override
  ResultVoid register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) {
    return remoteDataSource.register(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    );
  }
}
