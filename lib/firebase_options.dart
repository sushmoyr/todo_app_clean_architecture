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
    apiKey: 'AIzaSyDWFG-e3YO1oSzqXa2XxR1A1e3MQqauCY0',
    appId: '1:689202071103:web:4adc20492b52f452421a8a',
    messagingSenderId: '689202071103',
    projectId: 'xo-todo',
    authDomain: 'xo-todo.firebaseapp.com',
    storageBucket: 'xo-todo.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMMsgSJOKba3icyzw4Vo90Ge9slTD3OoE',
    appId: '1:689202071103:android:dd0fbfd624892eda421a8a',
    messagingSenderId: '689202071103',
    projectId: 'xo-todo',
    storageBucket: 'xo-todo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIM0XIuL2o3Y1c7H8LlRQKmXzodIW2q1U',
    appId: '1:689202071103:ios:d21c1d04776026f7421a8a',
    messagingSenderId: '689202071103',
    projectId: 'xo-todo',
    storageBucket: 'xo-todo.appspot.com',
    iosClientId: '689202071103-eejvr36ca3ocfbvn254f5q9k3e84gi59.apps.googleusercontent.com',
    iosBundleId: 'com.sushmoy.todoAppCleanArchitecture',
  );
}
