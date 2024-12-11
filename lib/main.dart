import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_notes/Views/Auth/LoginPage.dart';
import 'package:firebase_notes/Views/Auth/SignUp.dart';
import 'package:firebase_notes/Views/HomePage.dart';
import 'package:firebase_notes/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('_________________________User is currently signed out!');
      } else {
        print('__________________________User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          FirebaseAuth.instance.currentUser == null ? LoginPage() : HomePage(),
      routes: {
        'signUp': (context) => const SignUp(),
        'Login': (context) => const LoginPage(),
        'homePage': (context) => const HomePage(),
      },
    );
  }
}
