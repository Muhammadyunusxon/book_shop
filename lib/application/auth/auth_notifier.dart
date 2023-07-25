// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../presentation/app_route.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());

  loginGoogle(BuildContext context) async {
    state = state.copyWith(isGoogleLoading: true);

    // try {
    //   GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    //
    //   if (googleUser != null) {
    //     String? firstName;
    //     String? lastName;
    //
    //     final index = googleUser.displayName?.indexOf(" ");
    //     if (index != null && index != -1) {
    //       firstName = googleUser.displayName?.substring(0, index);
    //       lastName = googleUser.displayName?.substring(index);
    //     } else {
    //       firstName = googleUser.displayName;
    //     }
    //
    //     await GGroceryStorage.setUser(UserData(
    //       firstName: firstName,
    //       lastName: lastName,
    //       email: googleUser.email,
    //       img: googleUser.photoUrl,
    //     ));
    //     GGroceryRoute.goAddAddress(context);
    //     GoogleSignIn().signOut();
    //   }
    // } catch (e) {
    //   debugPrint("Google login error: $e");
    // }
    state = state.copyWith(isGoogleLoading: false);
  }

  loginFacebook(BuildContext context) async {
    state = state.copyWith(isFacebookLoading: true);
    // try {
    //   final fb = FacebookLogin();
    //   await fb.logIn();
    //
    //   final user = await fb.getUserProfile();
    //   if (user != null) {
    //     final email = await fb.getUserEmail();
    //     final img = await fb.getProfileImageUrl(width: 100, height: 100);
    //
    //     await GGroceryStorage.setUser(UserData(
    //       firstName: user.firstName,
    //       lastName: user.lastName,
    //       email: email,
    //       img: img,
    //     ));
    //     GGroceryRoute.goAddAddress(context);
    //   }
    //   fb.logOut();
    // } catch (e) {
    //   debugPrint("Facebook login error: $e");
    // }
    state = state.copyWith(isFacebookLoading: false);
  }

  loginApple(BuildContext context) async {
    state = state.copyWith(isAppleLoading: true);
    // try {
    //   final credential = await SignInWithApple.getAppleIDCredential(
    //     scopes: [
    //       AppleIDAuthorizationScopes.email,
    //       AppleIDAuthorizationScopes.fullName,
    //     ],
    //   );
    //
    //   OAuthProvider oAuthProvider = OAuthProvider("apple.com");
    //   final AuthCredential credentialApple = oAuthProvider.credential(
    //     idToken: credential.identityToken,
    //     accessToken: credential.authorizationCode,
    //   );
    //
    //   final userObj =
    //       await FirebaseAuth.instance.signInWithCredential(credentialApple);
    //
    //   await GGroceryStorage.setUser(UserData(
    //     firstName: userObj.user?.displayName,
    //     email: userObj.user?.email,
    //     img: userObj.user?.photoURL,
    //   ));
    //   GGroceryRoute.goAddAddress(context);
    // } catch (e) {
    //   state = state.copyWith(isLoading: false);
    //   debugPrint('===> login with apple exception: $e');
    // }
    state = state.copyWith(isAppleLoading: false);
  }

  signUp(BuildContext context) async {
    state = state.copyWith(isLoading: true);
    AppRoute.goAddAddress(context);

    state = state.copyWith(isLoading: false);
  }
  showPassword() async {
    state = state.copyWith(showPassword: !state.showPassword);

  }
}
