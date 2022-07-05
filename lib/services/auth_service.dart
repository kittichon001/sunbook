import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<void> anonymouslyLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      log('Signed in with temporary account.');
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'operation-not-allowed':
          log('Anonymous auth has not been enabled for this project.');
          break;
        default:
          log('Unknown error.');
      }
    }
  }

  static Future<void> emailLogin() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'abcdef@gmail.com',
        password: '123456',
      );
      log("Signed in with email account.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          log("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          log("Unknown error.");
      }
    }
  }

  Future<void> checkUser() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      switch (user) {
        case null:
          log('User is currently signed out!');
          break;
        default:
          log('User is signed in!');
      }
    });
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
