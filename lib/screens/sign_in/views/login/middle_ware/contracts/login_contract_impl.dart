import 'package:injectable/injectable.dart';

import '../../../../../../core/api_folder/auth_api.dart';
import '../../../../../../core/core_folder/app/app.locator.dart';
import '../../../../../../core/model/login_response/login_response.dart';
import '../../../../entity/login_entity/login_entity.dart';
import 'login_contracts.dart';

@lazySingleton
class AuthContractsImpl implements AuthContracts {
  final _api = locator<AuthApi>();

  // @override
  // Future<AuthResponse> register(Map map) async => await _api.register(map);

  @override
  Future<LoginResponse> login(LoginEntity entity) async =>
      await _api.login(entity);

  // @override
  // Future<DefautResponse> forgotPassword(String email) async =>
  //     await _api.forgotPassword(email);

  // @override
  // Future<AuthResponse> verifyOTP(String otp) async => await _api.verifyOTP(otp);

  // @override
  // Future<AuthResponse> resetPassword(PasswordEntity entity) async =>
  //     await _api.resetPassword(entity);
}