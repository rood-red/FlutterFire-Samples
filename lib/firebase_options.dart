import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAd3Dx4jDVdBwwlxauIeEgo-CLvYaL2jzM',
    appId: '1:218287290297:web:b917ec4a29fa0eabc16868',
    messagingSenderId: '218287290297',
    projectId: 'flutterfire-samples-69e80',
    authDomain: 'flutterfire-samples-69e80.firebaseapp.com',
    storageBucket: 'flutterfire-samples-69e80.appspot.com',
    measurementId: 'G-KSPW8R14BN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAd3Dx4jDVdBwwlxauIeEgo-CLvYaL2jzM',
    appId: '1:218287290297:android:bfbfa327b84d49ee88896f',
    messagingSenderId: '218287290297',
    projectId: 'flutterfire-samples-69e80',
    storageBucket: 'flutterfire-samples-69e80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAd3Dx4jDVdBwwlxauIeEgo-CLvYaL2jzM',
    appId: '1:218287290297:ios:02e7a09ced965a57c16868',
    messagingSenderId: '218287290297',
    projectId: 'flutterfire-samples-69e80',
    storageBucket: 'flutterfire-samples-69e80.appspot.com',
    androidClientId: '218287290297-sb39q5tsn7tbo6plb3lrf7dj1ue077ad.apps.googleusercontent.com',
    iosClientId: '218287290297-pjk8httek0l7barq4nqb18l7r3s2pc24.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfireSample',
  );
}
