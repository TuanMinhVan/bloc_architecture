import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/user.dart';
import '../utilities/typedef.dart';

part 'user_service.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio, {String? baseUrl}) = _UserService;

  @GET('/users')
  Future<UserListResponse> getUsers();

  @GET('/users/{id}')
  Future<User> getUser(@Path('id') String id);

  @POST('/users')
  Future<void> createUser(@Body() JsonMapping body);

  @PUT('/users/{id}')
  Future<void> updateUser(
    @Path('id') String id,
    @Body() JsonMapping body,
  );

  @DELETE('/users/{id}')
  Future<void> deleteUser(@Path('id') String id);
}
