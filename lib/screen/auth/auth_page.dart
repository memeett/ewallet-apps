
import 'package:ewallet_app/screen/auth/login_or_register.dart';
import 'package:ewallet_app/screen/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeApps();
          }

          else{
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}