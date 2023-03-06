import 'package:client_app/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_facebook/firebase_ui_oauth_facebook.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Numeric.cipherBool(bool: false);
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FirebaseUIAuth.configureProviders([
  //   EmailAuthProvider(),
  //   GoogleProvider(clientId: ""),
  //   FacebookProvider(clientId: ""),
  //   AppleProvider(),
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const HomePage(
          title: "Socket io test with traccar",
        ));
  }
}
