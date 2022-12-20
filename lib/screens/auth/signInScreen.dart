import 'package:firebaseauth/screens/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  AuthController auth_controller = Get.put(AuthController());

  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in")),
      body: Column(
        children: [
          TextField(
            controller: emailController,
          ),
          TextField(
            controller: passController,
          ),
          TextButton(
            child: Text("Log in"),
            onPressed: () async {
              auth_controller.signInFunction(
                  emailController.text, passController.text);
              print('---------------------');
              await auth_controller.box.read('iduser');
              print(auth_controller.box.read('iduser'));
            },
          ),
        ],
      ),
    );
  }
}
