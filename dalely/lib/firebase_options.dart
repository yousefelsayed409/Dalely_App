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
    apiKey: 'AIzaSyCf6Y4rTsH72B73lAoKHGG2ZGS2qMIRB-4',
    appId: '1:455262126057:web:21b451584c72716af89578',
    messagingSenderId: '455262126057',
    projectId: 'dalel-56ff5',
    authDomain: 'dalel-56ff5.firebaseapp.com',
    storageBucket: 'dalel-56ff5.appspot.com',
    measurementId: 'G-B3T9VCL0YS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwX1sL6RlpVodpvf0L9nsFQvDHaaOJE3M',
    appId: '1:455262126057:android:4382f909bc42e29ef89578',
    messagingSenderId: '455262126057',
    projectId: 'dalel-56ff5',
    storageBucket: 'dalel-56ff5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRf91IJZlSTgrbF2J4lIP3KPGtdpvmJmY',
    appId: '1:455262126057:ios:bd30395b0bde8497f89578',
    messagingSenderId: '455262126057',
    projectId: 'dalel-56ff5',
    storageBucket: 'dalel-56ff5.appspot.com',
    iosClientId: '455262126057-1ifj0soe687a6e99l7iogjv9vpg07lh9.apps.googleusercontent.com',
    iosBundleId: 'com.example.dalely',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRf91IJZlSTgrbF2J4lIP3KPGtdpvmJmY',
    appId: '1:455262126057:ios:bd30395b0bde8497f89578',
    messagingSenderId: '455262126057',
    projectId: 'dalel-56ff5',
    storageBucket: 'dalel-56ff5.appspot.com',
    iosClientId: '455262126057-1ifj0soe687a6e99l7iogjv9vpg07lh9.apps.googleusercontent.com',
    iosBundleId: 'com.example.dalely',
  );
}
