import '../../core/usecase/usecase.dart';
import '../../core/utilities/typedef.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUsers extends UsecaseWithoutParams<UserListResponse> {
  GetUsers(this._repository);
  final UserRepository _repository;

  @override
  ResultFuture<UserListResponse> call() => _repository.getUsers();
}
