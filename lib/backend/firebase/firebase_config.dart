import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCsuahbIXvORhp5gBJY7X4jkFGsKu1l1YA",
            authDomain: "login-app-b1a75.firebaseapp.com",
            projectId: "login-app-b1a75",
            storageBucket: "login-app-b1a75.firebasestorage.app",
            messagingSenderId: "368679370750",
            appId: "1:368679370750:web:dc1391386729324f3e4aaf"));
  } else {
    await Firebase.initializeApp();
  }
}
