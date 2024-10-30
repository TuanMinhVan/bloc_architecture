import '../utilities/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();
  ResultFuture<Type> call();
}

abstract class UsecaseWithFuture<Type, Params> {
  const UsecaseWithFuture();
  Future<Type> call(Params params);
}

abstract class UsecaseWithoutFuture<Type> {
  const UsecaseWithoutFuture();
  Future<Type> call();
}
