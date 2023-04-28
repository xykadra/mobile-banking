import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "HOME PAGE",
              style: GoogleFonts.inter(fontSize: 40, color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              "Logged in as: "+ user.email!,
              style: GoogleFonts.inter(fontSize: 40, color: Colors.black),
            ),
          ),
          ElevatedButton(onPressed: signUserOut, child: Text("log out"))
        ],
      ),
    );
  }
}
