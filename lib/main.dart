import 'package:counter_test/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyDmv_i2gVa59zS2hUXKiDUn0aG9t4ZIiPk',
    appId: '1:857401325015:android:fdd1279e6ff9e90f038792',
    messagingSenderId: '857401325015',
    projectId: 'appflutter-34335',
    authDomain: 'com.example.countertesst',
    storageBucket: 'loginbd-da00c.appspot.com',
  ));

  if (kIsWeb) {
    await FacebookAuth.i.webAndDesktopInitialize(
      appId: "874664834433450",
      cookie: true,
      xfbml: true,
      version: "v15.0",
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(),
    );
  }
}
