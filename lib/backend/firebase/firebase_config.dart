import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "REMOVED",
            authDomain: "REMOVED.firebaseapp.com",
            projectId: "REMOVED",
            storageBucket: "REMOVED.firebasestorage.app",
            messagingSenderId: "REMOVED",
            appId: "1:REMOVED:web:dc1391386729324f3e4aaf"));
  } else {
    await Firebase.initializeApp();
  }
}
