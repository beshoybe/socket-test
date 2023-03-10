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
    apiKey: 'AIzaSyC_zDsml5iwjInXhF0KxwQFLiLBpYtit6g',
    appId: '1:1045511573379:web:2cf44b45cf0c42e3acf0b6',
    messagingSenderId: '1045511573379',
    projectId: 'gsdcmacs-2023',
    authDomain: 'gsdcmacs-2023.firebaseapp.com',
    storageBucket: 'gsdcmacs-2023.appspot.com',
    measurementId: 'G-YJ28R0BWRN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7o8L19iah1d0tCK8dnSNfQr-wJ-cO6zo',
    appId: '1:1045511573379:android:5a24e3a4127d5b12acf0b6',
    messagingSenderId: '1045511573379',
    projectId: 'gsdcmacs-2023',
    storageBucket: 'gsdcmacs-2023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzGZriAE-GsuSoXDpFtH31oDJ_qbl-4vk',
    appId: '1:1045511573379:ios:f73d3caa989cb398acf0b6',
    messagingSenderId: '1045511573379',
    projectId: 'gsdcmacs-2023',
    storageBucket: 'gsdcmacs-2023.appspot.com',
    iosClientId: '1045511573379-5jj3rm2568b7jfh23gpdn4ksdfht29k2.apps.googleusercontent.com',
    iosBundleId: 'com.example.clientApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzGZriAE-GsuSoXDpFtH31oDJ_qbl-4vk',
    appId: '1:1045511573379:ios:f73d3caa989cb398acf0b6',
    messagingSenderId: '1045511573379',
    projectId: 'gsdcmacs-2023',
    storageBucket: 'gsdcmacs-2023.appspot.com',
    iosClientId: '1045511573379-5jj3rm2568b7jfh23gpdn4ksdfht29k2.apps.googleusercontent.com',
    iosBundleId: 'com.example.clientApp',
  );
}
