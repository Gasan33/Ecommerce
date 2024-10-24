// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyALTAON90muKycdWabBECSvR66QY7kQTlw',
    appId: '1:306895219134:web:a7b0a4869ccddc0b2c71ef',
    messagingSenderId: '306895219134',
    projectId: 'ecommerce-efe49',
    authDomain: 'ecommerce-efe49.firebaseapp.com',
    storageBucket: 'ecommerce-efe49.appspot.com',
    measurementId: 'G-WSH197K8GF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVivhugpKlk5uE0OF6io72TEiS0vXAaM4',
    appId: '1:306895219134:android:e487bde6d68d5d532c71ef',
    messagingSenderId: '306895219134',
    projectId: 'ecommerce-efe49',
    storageBucket: 'ecommerce-efe49.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBduJyQtP31aiRE5cjO3M2BJOLCZIWp37w',
    appId: '1:306895219134:ios:30c8039ac92657882c71ef',
    messagingSenderId: '306895219134',
    projectId: 'ecommerce-efe49',
    storageBucket: 'ecommerce-efe49.appspot.com',
    iosBundleId: 'com.example.blocEcommerce',
  );

}