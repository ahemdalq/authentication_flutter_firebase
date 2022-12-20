import 'package:firebaseauth/screens/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController auth_controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              auth_controller.signOutFunction();
            },
            child: Text("faisel"),
          ),
        ],
      ),
    );
  }
}
