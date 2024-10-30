import '../../core/mixin/api_error_handler_mixin.dart';
import '../../core/services/auth_service.dart';
import '../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';

const kCreateUserEndpoint = '/users';
const kGetUsersEndpoint = '/users';
const kLoginEndpoint = '/auth/login';

class AuthRemoteDataSource with ApiErrorHandlerMixin {
  AuthRemoteDataSource(this.authService);

  final AuthService authService;

  ResultFuture<User> authenticate({
    required String username,
    required String password,
  }) {
    final data = {
      'username': username,
      'password': password,
    };
    return request(authService.loginUser(data));
  }

  ResultVoid register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) {
    return request(
      authService.registerUser(
        {
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
          'password': password,
        },
      ),
    );
  }
}
