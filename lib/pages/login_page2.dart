import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

  Future showErrorWhileSigningIn(String errorMessage) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Okey"))
        ],
        title: Text(errorMessage),
        icon: Icon(Icons.error),
      ),
    );
  }

  void signUserIn() async {
    //show loading circle
    showDialog(
        context: context,
        builder: ((context) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      //poping loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //poping loading circle
      Navigator.pop(context);

      if (e.code == 'user-not-found') {
        showErrorWhileSigningIn('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showErrorWhileSigningIn('Wrong password provided for that user.');
      } else {
        showErrorWhileSigningIn(e.toString());
      }
    }
  }

  Color colorWhenVisibleIcon = Colors.black;
  Color? colorWhenVisibleContainer = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
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
                      style:
                          GoogleFonts.inter(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "Please login",
                      style:
                          GoogleFonts.inter(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(2)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                obscureText: _passwordVisible,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  // suffixIcon: Icon(
                                  //   Icons.remove_red_eye_sharp,
                                  //   color: colorWhenNotVisible,
                                  // ),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                //when obcure text
                                if (colorWhenVisibleIcon == Colors.black &&
                                    _passwordVisible == true) {
                                  //appearing eye
                                  colorWhenVisibleIcon = Colors.white;
                                  //setting password visible
                                  _passwordVisible = false;
                                }
                                //when not obscure text
                                else {
                                  colorWhenVisibleContainer = Colors.black;
                                  colorWhenVisibleIcon = Colors.black;
                                  _passwordVisible = true;
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: colorWhenVisibleContainer,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: colorWhenVisibleIcon,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: signUserIn,
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
      ),
    );
  }
}
