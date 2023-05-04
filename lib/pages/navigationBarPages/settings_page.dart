import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  bool switchForTranslation = true;
  bool switchForDarkTheme = true;
  bool switchForNotifications = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset("lib/assets/jovan.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.email!,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Communicate with Bank",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My account set",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_box,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Earned points overview",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.apple,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Apply for Bank products",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.payments_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Account registration for Pay to Contact",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.translate,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("English",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Switch(
                            activeColor: Colors.orange,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey[850],
                            thumbIcon: thumbIcon,
                            value: switchForTranslation,
                            onChanged: (bool value) {
                              setState(() {
                                switchForTranslation = value;
                              });
                            }),
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.grey,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.construction,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Dark theme",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Switch(
                            activeColor: Colors.orange,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey[850],
                            thumbIcon: thumbIcon,
                            value: switchForDarkTheme,
                            onChanged: (bool value) {
                              setState(() {
                                switchForDarkTheme = value;
                              });
                            }),
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.grey,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Allowe notifications",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Switch(
                            activeColor: Colors.orange,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey[850],
                            thumbIcon: thumbIcon,
                            value: switchForNotifications,
                            onChanged: (bool value) {
                              setState(() {
                                switchForNotifications = value;
                              });
                            }),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: signUserOut,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Logout",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Spacer(),
                ],
              ),
            ),
          )),
    );
  }
}
