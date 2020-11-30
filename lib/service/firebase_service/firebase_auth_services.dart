import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<AuthCredential> getFacebookCredential(String accessToken) async {
    return FacebookAuthProvider.credential(accessToken);
  }

  Future<AuthCredential> getGoogleCredential(String accessToken, String idToken) async {
    return GoogleAuthProvider.credential(
      accessToken: accessToken,
      idToken: idToken,
    );
  }

  Future<UserCredential> signInWithCredentials(AuthCredential authCredential) async {
    return await _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<void> logoutFirebase() async {
    await _firebaseAuth.signOut();
  }

  Future<User> getCurrentUser() async {
    return _firebaseAuth.currentUser;
  }
}
