import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/screens/auth/home_screen.dart';
import 'package:firebaseauth/screens/auth/signInScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final box = GetStorage();

  void signUpFunciton(email, pass) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      Get.off(HomeScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void signInFunction(email, pass) async {
    try {
      final user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      box.write('iduser', user.user!.uid);
      print('-----------------------------');
      print(user.user!.uid);

      Get.off(HomeScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void signOutFunction() async {
    try {
      await FirebaseAuth.instance.signOut();
      box.remove('iduser');

      Get.off(SignInScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
