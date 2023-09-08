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
    apiKey: 'AIzaSyCVE9so_rhkaS-apZuWwqvaLAqJzqqJkZc',
    appId: '1:533050628081:web:e48082de6ec940e8c91650',
    messagingSenderId: '533050628081',
    projectId: 'ewalletlogin-39a3d',
    authDomain: 'ewalletlogin-39a3d.firebaseapp.com',
    storageBucket: 'ewalletlogin-39a3d.appspot.com',
    measurementId: 'G-2JBKJ0Q3YX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDW6U1digmMaCAeEBxwAkw_KDui91FRThQ',
    appId: '1:533050628081:android:b367a95d6e6313cac91650',
    messagingSenderId: '533050628081',
    projectId: 'ewalletlogin-39a3d',
    storageBucket: 'ewalletlogin-39a3d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBknxYdk5Ercq7nq7ebukceYHhIluMUexE',
    appId: '1:533050628081:ios:a214473307589735c91650',
    messagingSenderId: '533050628081',
    projectId: 'ewalletlogin-39a3d',
    storageBucket: 'ewalletlogin-39a3d.appspot.com',
    iosClientId: '533050628081-5b36i8tt8658439udu4s9a971mip738v.apps.googleusercontent.com',
    iosBundleId: 'com.example.ewalletApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBknxYdk5Ercq7nq7ebukceYHhIluMUexE',
    appId: '1:533050628081:ios:928ca713024144c0c91650',
    messagingSenderId: '533050628081',
    projectId: 'ewalletlogin-39a3d',
    storageBucket: 'ewalletlogin-39a3d.appspot.com',
    iosClientId: '533050628081-oclidgusq0qir1rq9nncjsflvffapfcs.apps.googleusercontent.com',
    iosBundleId: 'com.example.ewalletApp.RunnerTests',
  );
}