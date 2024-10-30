import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/config.dart';

class AuthLocalDataSource {
  const AuthLocalDataSource(this.secureStorage);

  final FlutterSecureStorage secureStorage;

  Future<bool> isAuthenticated() async {
    final token = await secureStorage.read(key: Configs.keyAcceptToken);
    return token != null;
  }

  Future<void> saveToken(String token) {
    return secureStorage.write(key: Configs.keyAcceptToken, value: token);
  }

  Future<void> removeToken() {
    return secureStorage.delete(key: Configs.keyAcceptToken);
  }
}
