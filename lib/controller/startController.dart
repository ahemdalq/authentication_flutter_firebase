import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StartController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  List data = [];

  getData() {
    var firestore = FirebaseFirestore.instance;
    var userid = FirebaseAuth.instance.currentUser?.uid;
    var allData = firestore.collection('users').snapshots();
    allData.forEach((element) {
      element.docs.map((e) => print(e.data()));
    });
  }
}
