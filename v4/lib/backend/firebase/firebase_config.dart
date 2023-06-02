import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCl7txJl_dIVzT0JwjcivKWB-8Fk9kGx1o",
            authDomain: "proyectofinal-ac15d.firebaseapp.com",
            projectId: "proyectofinal-ac15d",
            storageBucket: "proyectofinal-ac15d.appspot.com",
            messagingSenderId: "127269609118",
            appId: "1:127269609118:web:3b021e79c08431b21ba58f"));
  } else {
    await Firebase.initializeApp();
  }
}
