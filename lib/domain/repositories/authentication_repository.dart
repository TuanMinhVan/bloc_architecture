import '../../core/utilities/typedef.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  ResultFuture<User> authenticate({
    required String username,
    required String password,
  });

  Future<bool> isAuthenticated();

  Future<void> logout();

  Future<void> saveToken(String token);
}
