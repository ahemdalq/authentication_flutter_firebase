import 'package:firebaseauth/screens/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController c_AuthController = Get.put(AuthController());
    final emailController = TextEditingController();
    final passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Sign up screen")),
      body: Column(children: [
        TextField(
          controller: emailController,
        ),
        TextField(
          controller: passController,
        ),
        TextButton(
            onPressed: () {
              c_AuthController.signUpFunciton(
                  emailController.text, passController.text);
            },
            child: Text("createAcoount"))
      ]),
    );
  }
}
