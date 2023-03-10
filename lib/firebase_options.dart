// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAyHl8sITcrKVfw-yAJpx_dcIxlItC9VXw',
    appId: '1:1084544187752:web:0c9049a682f68ca556eadd',
    messagingSenderId: '1084544187752',
    projectId: 'fir-test-4128f',
    authDomain: 'fir-test-4128f.firebaseapp.com',
    storageBucket: 'fir-test-4128f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVme3bHPVA94tHI1jOJDc7n7xBtTYbEZU',
    appId: '1:1084544187752:android:b31cbae1689a9cd056eadd',
    messagingSenderId: '1084544187752',
    projectId: 'fir-test-4128f',
    storageBucket: 'fir-test-4128f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWPKRPvwEPzuvtoy0jsWXPQzrpxJ9_zpU',
    appId: '1:1084544187752:ios:0e3e5603ea86c8c556eadd',
    messagingSenderId: '1084544187752',
    projectId: 'fir-test-4128f',
    storageBucket: 'fir-test-4128f.appspot.com',
    iosClientId: '1084544187752-2dt6hbpl41bo66ch8hmvbdqu4duld9bo.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWPKRPvwEPzuvtoy0jsWXPQzrpxJ9_zpU',
    appId: '1:1084544187752:ios:0e3e5603ea86c8c556eadd',
    messagingSenderId: '1084544187752',
    projectId: 'fir-test-4128f',
    storageBucket: 'fir-test-4128f.appspot.com',
    iosClientId: '1084544187752-2dt6hbpl41bo66ch8hmvbdqu4duld9bo.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseauth',
  );
}
