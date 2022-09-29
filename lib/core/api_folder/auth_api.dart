import 'dart:developer';

import '../../screens/sign_in/entity/login_entity/login_entity.dart';
import '../core_folder/app/app.locator.dart';
import '../core_folder/network/networt_service.dart';
import '../core_folder/network/url_path.dart';
import '../model/login_response/login_response.dart';

// @lazySingleton
class AuthApi {
  final _service = locator<NetworkService>();

  // Future<AuthResponse> register(Map map) async {
  //   try {
  //     final response = await _service
  //         .call(UrlConfig.register, RequestMethod.post, data: map);
  //     return AuthResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<LoginResponse> login(LoginEntity entity) async {
    try {
      final response = await _service.call(UrlConfig.login, RequestMethod.post,
          data: entity.toJson());
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
