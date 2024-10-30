import '../../core/usecase/usecase.dart';
import '../../core/utilities/typedef.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class CreateUser extends UsecaseWithParams<void, User> {
  CreateUser(this._repository);
  final UserRepository _repository;

  @override
  ResultFuture<void> call(User params) {
    return _repository.createUser(params);
  }
}
