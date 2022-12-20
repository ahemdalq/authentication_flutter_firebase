import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauth/screens/auth/home_screen.dart';
import 'package:firebaseauth/screens/auth/signInScreen.dart';
import 'package:firebaseauth/screens/auth/singUpscreen.dart';
import 'package:firebaseauth/screens/userScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var userId = GetStorage().read('iduser');

    return GetMaterialApp(
      home: userId == null ? SignUpScreen() : userScreen(),
    );
  }
}
