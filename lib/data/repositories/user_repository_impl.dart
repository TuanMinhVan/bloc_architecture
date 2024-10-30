import '../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasource/user_remote_data_source.dart';

/// Implementation of the UserRepository.
class UserRepositoryImpl extends UserRepository {
  /// Constructor for UserRepositoryImpl.
  UserRepositoryImpl(this.remoteDataSource);
  final UserRemoteDataSource remoteDataSource;

  /// Creates a new user.
  ///
  /// [name] The name of the user.
  /// [avatar] The avatar of the user.
  /// [createdAt] The date and time the user was created.
  ///
  /// **Example:**
  /// ```dart
  /// final userRepository = UserRepositoryImpl(userRemoteDataSource);
  /// await userRepository.createUser(
  ///   name: 'Alice',
  ///   avatar: 'https://example.com/avatar.jpg',
  ///   createdAt: DateTime.now(),
  /// );
  /// ```
  @override
  ResultVoid createUser(User newUser) {
    return remoteDataSource.createUser(newUser);
  }

  /// Gets all users.
  ///
  /// **Example:**
  /// ```dart
  /// final users = await userRepository.getUsers();
  /// ```
  @override
  ResultFuture<UserListResponse> getUsers() => remoteDataSource.getUsers();
}
