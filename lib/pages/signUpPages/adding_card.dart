import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/navigation_bar.dart';

class AddingCardPage extends StatefulWidget {
  const AddingCardPage(
      {super.key,
      required this.name,
      required this.surname,
      required this.email,
      required this.password});
  final String name;
  final String surname;
  final String email;
  final String password;
  @override
  State<AddingCardPage> createState() => _AddingCardPageState();
}

class _AddingCardPageState extends State<AddingCardPage> {
  void signUp(String name, String surname, String email, String password,
      String cardNumber, String expireDate, String cvv) async {
    await FirebaseFirestore.instance.collection('users').add({
      'firstName': name,
      'lastName': surname,
      'email': email,
      'password':password,
      'creditCardNumber': cardNumber,
      'expirationDate': expireDate,
      'cvv': cvv,
    });
  }

  final cardNumberController = TextEditingController();
  final expireDateController = TextEditingController();
  final cvvController = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    cardNumberController.dispose();
    expireDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "Add a card",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(0)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                        controller: cardNumberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Card number",
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(0)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                            controller: expireDateController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Expire date",
                            )),
                      ),
                    ),
                    Container(
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(0)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                            controller: cvvController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Security code",
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: GestureDetector(
                  onTap: (){
                    signUp(
                            widget.name,
                            widget.surname,
                            widget.email,
                            widget.password,
                            cardNumberController.text,
                            expireDateController.text,
                            cvvController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MobileBankingNavigationBar(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text(
                        "Add later",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        signUp(
                            widget.name,
                            widget.surname,
                            widget.email,
                            widget.password,
                            cardNumberController.text,
                            expireDateController.text,
                            cvvController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MobileBankingNavigationBar(),));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
