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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD22NQKpOp2sBSpOnlNvEqQgCnywh_rzlM',
    appId: '1:166154949092:web:fbbc8760637ac906e0b7f1',
    messagingSenderId: '166154949092',
    projectId: 'mobilecariv',
    authDomain: 'mobilecariv.firebaseapp.com',
    storageBucket: 'mobilecariv.appspot.com',
    measurementId: 'G-4Q2GJTGVXD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKJqVX7ZpfY-NSv-jVPXFA8gOLOtygDx8',
    appId: '1:166154949092:android:90fc62136ffd013de0b7f1',
    messagingSenderId: '166154949092',
    projectId: 'mobilecariv',
    storageBucket: 'mobilecariv.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_S9NZjGmgvzMjfLCqtbern-j2kQVPWF8',
    appId: '1:166154949092:ios:737d05794055e3d5e0b7f1',
    messagingSenderId: '166154949092',
    projectId: 'mobilecariv',
    storageBucket: 'mobilecariv.appspot.com',
    iosClientId: '166154949092-v810g3ai21ukiv8bnm5l27oio4n7vjjb.apps.googleusercontent.com',
    iosBundleId: 'com.example.myfirstproject',
  );
}