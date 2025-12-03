import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'home_screen.dart';
import 'admin_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SaraswathiTiffinsApp());
}

class SaraswathiTiffinsApp extends StatelessWidget {
  const SaraswathiTiffinsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saraswathi Tiffins',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: "Roboto",
      ),
      home: const HomeScreen(),
      routes: {
        '/admin': (context) => const AdminLoginScreen(),
      },
    );
  }
}