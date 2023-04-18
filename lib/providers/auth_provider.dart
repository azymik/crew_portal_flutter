import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthNotifier extends StateNotifier<FirebaseAuth> {
  AuthNotifier() : super(FirebaseAuth.instance);

  Future<UserCredential> signIn() async {
    if (kIsWeb) {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      return await state.signInWithPopup(googleAuthProvider);
    }

    final GoogleSignInAccount? googleSignInAccount =
        await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final oAuthCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication?.accessToken,
      idToken: googleSignInAuthentication?.idToken,
    );

    return await state.signInWithCredential(oAuthCredential);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, FirebaseAuth>((ref) {
  return AuthNotifier();
});
