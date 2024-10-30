import '../../core/mixin/api_error_handler_mixin.dart';
import '../../core/services/user_service.dart';
import '../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';

class UserRemoteDataSource with ApiErrorHandlerMixin {
  UserRemoteDataSource(this.userService);
  final UserService userService;

  ResultFuture<UserListResponse> getUsers() => request(userService.getUsers());

  ResultVoid createUser(User newUser) {
    return request(userService.createUser(newUser.toJson()));
  }
}
