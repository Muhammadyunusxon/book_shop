import 'dart:convert';

import 'package:book_shop/domain/di/injection.dart';
import 'package:book_shop/domain/handlers/handlers.dart';
import 'package:book_shop/domain/interface/auth_repository.dart';
import 'package:flutter/material.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<ApiResult> login({
    required String phoneNumber,
    required String password,
  }) async {
    final data = {'phoneNumber': phoneNumber, 'password': password};
    debugPrint('===> login request ${jsonEncode(data)}');
    try {
      final client = inject<HttpService>().client();
      final response = await client.post(
        '/api/auth/login',
        data: data,
      );
      return ApiResult.success(
        data: response.data,
      );
    } catch (e) {
      debugPrint('==> login failure: $e');
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e),
          statusCode: NetworkExceptions.getDioStatus(e));
    }
  }

  @override
  Future<ApiResult> loginWithSocial({
    String? email,
    String? displayName,
    String? id,
  }) async {
    final data = {
      if (email != null) 'email': email,
      if (displayName != null) 'name': displayName,
      if (id != null) 'id': id,
    };
    debugPrint('===> login request ${jsonEncode(data)}');
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
        '/api/v1/auth/google/callback',
        data: data,
      );
      return ApiResult.success(data: response.data);
    } catch (e) {
      debugPrint('==> login with google failure: $e');
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e),
          statusCode: NetworkExceptions.getDioStatus(e));
    }
  }

  @override
  Future<ApiResult> sendOtp({required String phone}) async {
    final data = {'phone': phone};
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
        '/api/auth/register/send-code',
        data: data,
      );
      return ApiResult.success(data: response.data);
    } catch (e) {
      debugPrint('==> send otp failure: $e');
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e),
          statusCode: NetworkExceptions.getDioStatus(e));
    }
  }

  @override
  Future<ApiResult> verifyPhone({
    required String phoneNumber,
    required String verifyCode,
  }) async {
    final data = {'phoneNumber': phoneNumber, 'code': verifyCode};
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
        '/api/auth/register/verify/',
        data: data,
      );
      return ApiResult.success(
        data: response.data,
      );
    } catch (e) {
      debugPrint('==> verify phone failure: $e');
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e),
          statusCode: NetworkExceptions.getDioStatus(e));
    }
  }

  @override
  Future<ApiResult> sigUp(
      {required String firstName,
      required String lastName,
      required String phone,
      required String password}) async {
    final data = {
      'FirstName': firstName,
      'LastName': lastName,
      'PhoneNumber': phone,
      'Password': password,
    };
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
        '/api/auth/register',
        data: data,
      );
      return ApiResult.success(
        data: response.data,
      );
    } catch (e) {
      debugPrint('==> sigUp failure: $e');
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e),
          statusCode: NetworkExceptions.getDioStatus(e));
    }
  }
}
