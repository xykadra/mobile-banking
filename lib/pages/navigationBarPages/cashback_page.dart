import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/navigationBarPages/users.dart';

class CashbackPage extends StatefulWidget {
  const CashbackPage({super.key});

  @override
  State<CashbackPage> createState() => _CashbackPageState();
}

class _CashbackPageState extends State<CashbackPage> {
  List<Users> listOfUsers = [];

  void initState() {
    fetchRecords();
    super.initState();
  }

  fetchRecords() async {
    var records = await FirebaseFirestore.instance.collection("users").get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _lists = records.docs
        .map((users) => Users(
            firstName: users['firstName'],
            lastName: users['lastName'],
            email: users['email'],
            password: users['password']))
        .toList();
    setState(() {
      listOfUsers = _lists;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: listOfUsers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(index.toString() + listOfUsers[index].firstName),
              subtitle: Text(listOfUsers[index].email +
                  "    " +
                  listOfUsers[index].password),
            );
          }),
    );
  }
}
