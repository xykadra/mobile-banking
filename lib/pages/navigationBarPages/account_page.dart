import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_banking/cards_utils/adding_card_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                    padding: EdgeInsets.only(right: 15, left: 10),
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
                        width: 30,
                      ),
                      //Card 2 Container
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddCardPage(),
                              ));
                        },
                        child: Container(
                            //height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(color: Colors.yellow),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Container(
                              padding: EdgeInsets.all(10),
                              height: 50,
                              //width: 140,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(2),
                                      color: Colors.white,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Add card",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ))),
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(33, 33, 33, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  height: 221,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.yellow,
                            )
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: transaction("Pacific Stereo", "Entertainment",
                              "- \$4,128.11"),
                        ),
                        Spacer(),
                        transaction(
                            "Ricky Smith", "Card transfer", "- \$3,072.56"),
                        Spacer(),
                        transaction("Rainbow Bay Crafts",
                            "Groceries and supermarkets", "- \$8,049.86"),
                      ],
                    ),
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

Row transaction(String name, String type, String money) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.grey[100], fontSize: 15),
          ),
          Text(
            type,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
      Text(
        money,
        style: TextStyle(color: Colors.grey[100], fontSize: 20),
      )
    ],
  );
}
