
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newbikeapp/screens/sign_in.dart';
/*
void main() async {
  // Initializing Firebase
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(); // This is an asynchronous task, so we use 'await'
    print("Firebase connection successful");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }
  runApp(const MyApp());
}
*/
void main() async {
  // Initializing Firebase
  WidgetsFlutterBinding.ensureInitialized();
  try {
    Platform.isAndroid
    ? await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "YOURAPIKEY",
      appId: "YOURMAPID",
      messagingSenderId: "YOUR_MESSAGED_ID",
      projectId: "YOUR_PROJECT_ID",
    ),
  )
  : await Firebase.initializeApp(); // This is an asynchronous task, so we use 'await'
    print("Firebase connection successful");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignIn(),
    );
  }
}
