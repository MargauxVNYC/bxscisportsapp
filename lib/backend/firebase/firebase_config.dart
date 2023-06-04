import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjnxyd_zOry271aceFkqMGr4PPDpCBsk4",
            authDomain: "realbxscisports.firebaseapp.com",
            projectId: "realbxscisports",
            storageBucket: "realbxscisports.appspot.com",
            messagingSenderId: "1061820801044",
            appId: "1:1061820801044:web:762a671c96d59dd9724701"));
  } else {
    await Firebase.initializeApp();
  }
}
