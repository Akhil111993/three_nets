import 'dart:core';
import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';

class LoginToFirebase {
  final String email; final String password;
  LoginToFirebase(this.email, this.password);
  Future<User?> LoginToFB() async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: email,
          password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return null;
    }
  }
}