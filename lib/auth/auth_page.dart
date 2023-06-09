import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/home_page.dart';
import 'package:mobile_banking/pages/login_page2.dart';
import 'package:mobile_banking/pages/navigation_bar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //if user is logged in
          if (snapshot.hasData) {
            return MobileBankingNavigationBar();
          }
          //if user is not logged in
          else {
            return LoginPage2();
          }
        },
      ),
    );
  }
}
