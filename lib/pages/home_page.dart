import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_banking/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Credit Cards",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        // height: 30,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.yellow),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "lib/assets/mastercard2.jpg",
                                          // color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "**** 8234",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "06/24",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Balance",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 22),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\$ 16,401.00",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        //height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(color: Colors.yellow),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        child: Image.asset(
                                          "lib/assets/mastercard.png",
                                          // color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "**** 8234",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "06/24",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Balance",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 22),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\$ 42,401.00",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(33, 33, 33, 1),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Budget",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            "90%",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.red,
                              ),
                              Text(
                                "11.2%",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 12),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "per year",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Container(
                        height: 130,
                        child: Lottie.asset("lib/assets/mobile_bankiing.json"),
                      )
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
