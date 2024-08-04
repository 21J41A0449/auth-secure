import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/auth/auth.dart';
import 'package:socialmedia/auth/login_or_register.dart';
import 'package:socialmedia/pages/homepage.dart';
import 'package:socialmedia/pages/profile_page.dart';
import 'package:socialmedia/pages/user_page.dart';
import 'package:socialmedia/theme/dark_mode.dart';
import 'package:socialmedia/theme/light_mode.dart';

import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDMVX_V9FomAEzYCHkPxvAPg1_g2Ln5dVA',
       appId: "1:888060737536:android:f22b01ccdced12a92100e5", 
       messagingSenderId:"888060737536" ,
       projectId:"minimal-social-app-f6753" ,)
  )

  :await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page':(context) => const LoginOrRegister(),
        '/home_page':(context) => HomePage(),
        '/profile_page':(context) =>  ProfilePage(),
        '/users_page':(context) => const UserPage(),
      },
    );
  }
}
