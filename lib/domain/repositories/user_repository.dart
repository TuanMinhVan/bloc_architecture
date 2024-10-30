import '../../core/utilities/typedef.dart';
import '../entities/user.dart';

/// Repository for managing users.
abstract class UserRepository {
  /// Creates a new instance of [UserRepository].
  const UserRepository();

  /// Creates a new user.
  ///
  /// [name] The name of the user.
  /// [avatar] The avatar of the user.
  /// [createdAt] The date and time the user was created.
  /// **Example:**
  /// ```dart
  /// final userRepository = UserRepository();
  /// final result = userRepository.createUser(
  ///   name: 'John Doe',
  ///   avatar: 'https://example.com/avatar.jpg',
  ///   createdAt: DateTime.now(),
  /// );
  /// ```
  ResultVoid createUser(User newUser);

  /// Gets a list of users.
  /// **Example:**
  /// ```dart
  /// final userRepository = UserRepository();
  /// final result = userRepository.getUsers();
  /// ```
  ResultFuture<UserListResponse> getUsers();
}
