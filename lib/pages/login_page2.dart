import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Login page",
                    style: GoogleFonts.inter(color: Colors.white),
                  ),
                ],
              ),
              Container(
                  height: 200, child: Lottie.asset("lib/assets/login.json")),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    "Please login",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                        "email",
                        style: GoogleFonts.inter(),
                      )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                        "password",
                        style: GoogleFonts.inter(),
                      )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text("LOGIN"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.inter(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      )),
    );
  }
}
