
import '../../../../../../core/model/login_response/login_response.dart';
import '../../../../entity/login_entity/login_entity.dart';

abstract class AuthContracts {
  // Future<AuthResponse> register(Map map);
  Future<LoginResponse> login(LoginEntity entity);
  // Future<DefautResponse> forgotPassword(String email);
  // Future<AuthResponse> verifyOTP(String otp);
  // Future<AuthResponse> resetPassword(PasswordEntity entity);
}