import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/signUpPages/adding_card.dart';

class EmailPage extends StatelessWidget {
  //const EmailPage({super.key});

  final String name;
  final String surname;

  EmailPage({
    required this.name,
    required this.surname,
  });
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signUpUsingEmailAndPassword() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);
  }

  bool checkFields(String field1, String field2) {
    if (field1 == "" || field2 == "") {
      return false;
    } else {
      return true;
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  name + ",",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Please input email",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        )),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                        controller: _passwordController,
                        //keyboardType: TextInputType.none,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        )),
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
                          if (checkFields(_emailController.text,
                              _passwordController.text)) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddingCardPage(
                                        name: name,
                                        surname: surname,
                                        email: _emailController.text,
                                        password: _passwordController.text)));
                            signUpUsingEmailAndPassword();
                          }
                          else{
                            //Display some warning message if some of the fields are empty
                            //also can be implemented here error if email is wrong  badly formatted"
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Continue",
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
                )
              ],
            ),
          )),
    );
  }
}
