import '../../core/usecase/usecase.dart';
import '../repositories/authentication_repository.dart';

class CheckAuthentication extends UsecaseWithoutFuture<bool> {
  CheckAuthentication(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<bool> call() => _repository.isAuthenticated();
}
