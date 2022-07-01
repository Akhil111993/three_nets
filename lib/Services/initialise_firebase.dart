import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InitialiseFirebase {
  static Future<void> initialiseFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();

    // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
    // See related issue: https://github.com/flutter/flutter/issues/96391
    if (!kIsWeb) {
      await Firebase.initializeApp();
    } else {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCrdAZMbU9x_fnpJlxGGPEwB-YHsvE_c50",
            authDomain: "nets-48e4e.firebaseapp.com",
            projectId: "nets-48e4e",
            storageBucket: "nets-48e4e.appspot.com",
            messagingSenderId: "1046588524439",
            appId: "1:1046588524439:web:03099f8ba61999205c26d2"),
      );
    }
  }
}
