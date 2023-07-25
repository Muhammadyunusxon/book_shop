
import 'package:book_shop/domain/handlers/api_result.dart';

abstract class AuthRepository {
  Future<ApiResult> login({
    required String phoneNumber,
    required String password,
  });

  Future<ApiResult> loginWithSocial({
    String? email,
    String? displayName,
    String? id,
  });

  Future<ApiResult> sigUp({
    required String firstName,
    required String lastName,
    required String phone,
    required String password,
  });

  Future<ApiResult> sendOtp({required String phone});


  Future<ApiResult> verifyPhone({
    required String phoneNumber,
    required String verifyCode,
  });

}
