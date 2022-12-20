import 'package:cloud_firestore/cloud_firestore.dart';

sendData({required String userId, required Map<String, dynamic> info}) async {
  var firestore = FirebaseFirestore.instance;

  await firestore.collection('users').doc(userId).set(info);
}



checkUserRole(
    {required String userId,
    required Function(Map<String, dynamic>?)? data}) async {
  try {
    var firestore = FirebaseFirestore.instance;

    var user = await firestore.collection('users').doc(userId).get();
    data!(user.data());
  } catch (error) {
    print(error);
  }
}
