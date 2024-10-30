import '../../core/mixin/api_error_handler_mixin.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utilities/typedef.dart';
import '../entities/user.dart';
import '../repositories/authentication_repository.dart';

class LoginUser extends UsecaseWithParams<User, LoginParam>
    with ApiErrorHandlerMixin {
  LoginUser(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture<User> call(LoginParam params) async {
    return _repository.authenticate(
      username: params.username,
      password: params.password,
    );
  }
}

class LoginParam {
  const LoginParam({
    required this.username,
    required this.password,
  });
  final String username;
  final String password;
}
