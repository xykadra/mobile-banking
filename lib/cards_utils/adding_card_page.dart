import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(0)),
                          child: Icon(Icons.arrow_back, color: Colors.white,)
                        ),
                      ),
                      Spacer(),
                      //Text("New Card", style: TextStyle(color: Colors.grey),),
                      Spacer()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Card number",
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child:
                                SvgPicture.asset("lib/assets/icons/card.svg")),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Full name",
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child:
                                SvgPicture.asset("lib/assets/icons/user.svg")),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        color: Colors.grey[200],
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "CVV",
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    "lib/assets/icons/Cvv.svg")),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        color: Colors.grey[200],
                        child: TextFormField(
                          keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                            hintText: "MM/YY",
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    "lib/assets/icons/Cvv.svg")),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[850]!),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "lib/assets/icons/scan.svg",
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Scan card",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      "Add card",
                      style: TextStyle(color: Colors.black, fontSize:15,),
                    )),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          )),
    );
  }
}
