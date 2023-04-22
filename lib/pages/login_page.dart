import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_banking/pages/login_page2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "moBank",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 15),
                  ),
                ),
                //Spacer(),
                Lottie.asset("lib/assets/cards2.json", height: 400),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("From your",
                                maxLines: 4,
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 35)),
                            Text("everyday spending",
                                maxLines: 4,
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 35)),
                            Text("to investments",
                                maxLines: 4,
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 35)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Unlock the power of a borderless",
                                style: GoogleFonts.inter(
                                    color: Colors.grey, fontSize: 15)),
                            Text("exonomy, for everyone",
                                style: GoogleFonts.inter(
                                    color: Colors.grey, fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage2(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                )
                // SizedBox(
                //   height: 40,
                // )
              ],
            ),
          ),
        ));
  }
}
