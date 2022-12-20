import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';

class userScreen extends StatelessWidget {
  userScreen({super.key});
  AuthController auth_controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: SafeArea(
        child: TextButton(
          onPressed: () {
            auth_controller.signOutFunction();
          },
          child: Text("faisel"),
        ),
      ),
    );
  }
}
