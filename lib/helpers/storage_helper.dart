import 'package:get_storage/get_storage.dart';

class StorageKey {
  StorageKey();
  static const intro = 'INTRO';
  static const accessToken = 'ACCCESS_TOKEN';
}

class StorageHelper {
  static final storage = GetStorage();

  static saveAccessToken(String token) async {
    await storage.write(StorageKey.accessToken, token);
  }

  static Future<String?> removeAccessToken() async {
    await storage.remove(StorageKey.accessToken);
  }

  static Future<String?> getAccessToken() async {
    var token = await storage.read(StorageKey.accessToken);
    return token;
  }
}
