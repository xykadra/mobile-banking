import 'package:flutter/material.dart';

class CashbackPage extends StatefulWidget {
  const CashbackPage({super.key});

  @override
  State<CashbackPage> createState() => _CashbackPageState();
}

class _CashbackPageState extends State<CashbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cashback page"),
      ),
    );
  }
}
