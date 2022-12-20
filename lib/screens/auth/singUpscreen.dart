import 'package:firebaseauth/controller/auth_controller.dart';
import 'package:firebaseauth/firestore/create_user.dart';
import 'package:firebaseauth/screens/adminScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../userScreen.dart';

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
                  email: emailController.text,
                  pass: passController.text,
                  onDone: (valueId) async {
                    if (valueId != null) {
                      await sendData(userId: valueId, info: {"Role": "admin"});
                      Get.off(AdminScreen(), arguments: valueId);
                    } else {
                      Get.off(userScreen());
                    }
                  });
            },
            child: Text("createAcoount"))
      ]),
    );
  }
}
