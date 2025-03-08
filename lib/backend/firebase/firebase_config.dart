import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQc5tSUM3w-2CRX-RLBCVvOwIDrIIdUY0",
            authDomain: "distil-hzs55k.firebaseapp.com",
            projectId: "distil-hzs55k",
            storageBucket: "distil-hzs55k.firebasestorage.app",
            messagingSenderId: "589614175790",
            appId: "1:589614175790:web:097c19710755a0d0f671bf"));
  } else {
    await Firebase.initializeApp();
  }
}
