
import 'package:injectable/injectable.dart';

import '../../../../../../core/core_folder/app/app.locator.dart';
import '../../../../../../core/core_folder/manager/session_manager.dart';
import '../../../../../../core/model/login_response/data.dart';
import '../../../../../../core/model/login_response/login_response.dart';
import '../../../../entity/login_entity/login_entity.dart';
import '../contracts/login_contract_impl.dart';
import 'login_repo.dart';

@lazySingleton
class AuthRepoImpl implements AuthRepo {
  final _session = locator<SharedPreferencesService>();
  final _contract = locator<AuthContractsImpl>();

  @override
  Future<LoginResponse> login(LoginEntity entity) async {
    final response = await _contract.login(entity);
    _session.isLoggedIn = true;
    _chache(response.data);
    return response;
  }

  // @override
  // Future<AuthResponse> register(Map map) async {
  //   final response = await _contract.register(map);
  //   _chache(response.data);
  //   return response;
  // }

  void _chache(Data? data) {
    if (data != null) {
      _session.authTokenType = data.jwtToken!;
      _session.authToken = data.jwtToken!;
      _session.usersData = data.toJson();
    }
  }

  // @override
  // Future<DefautResponse> forgotPassword(String email) async =>
  //     await _contract.forgotPassword(email);

  // @override
  // Future<AuthResponse> verifyOTP(String otp) async =>
  //     await _contract.verifyOTP(otp);

  // @override
  // Future<AuthResponse> resetPassword(PasswordEntity entity) async =>
  //     await _contract.resetPassword(entity);
}