import '../../core/usecase/usecase.dart';
import '../repositories/authentication_repository.dart';

class LogoutUser extends UsecaseWithoutFuture<void> {
  LogoutUser(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<void> call() => _repository.logout();
}
