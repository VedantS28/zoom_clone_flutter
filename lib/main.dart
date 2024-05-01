import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:zoom_clone/screens/home_Screen.dart';
import 'package:zoom_clone/screens/login.dart';
import 'package:zoom_clone/screens/signup.dart';
import 'package:zoom_clone/screens/start_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: "AIzaSyCWS_5GlsZmdXzOTBvJwZUPfTpOxsnMoxk",
          appId: "1:67732365698:android:494c2a561c161241e1ef9b",
          messagingSenderId: "67732365698",
          projectId: "zoom-clone-5ab3c",
          storageBucket: "zoom-clone-5ab3c.appspot.com",
        ))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const LoginScreen(),
      routes: {
        "/login": (context) => const LoginScreen(),
        // "/home": (context) => const HomeScreen(),
        "/signup": (context) =>  SignUp(),
        "/loginscreen": (context) =>  Login(),
      },
    );
  }
}
