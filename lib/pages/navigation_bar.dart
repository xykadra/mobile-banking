import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/home_page.dart';
import 'package:mobile_banking/pages/navigationBarPages/account_page.dart';
import 'package:mobile_banking/pages/navigationBarPages/cashback_page.dart';
import 'package:mobile_banking/pages/navigationBarPages/settings_page.dart';
import 'package:mobile_banking/pages/navigationBarPages/statistics_page.dart';

class MobileBankingNavigationBar extends StatefulWidget {
  const MobileBankingNavigationBar({super.key});

  @override
  State<MobileBankingNavigationBar> createState() =>
      _MobileBankingNavigationBarState();
}

class _MobileBankingNavigationBarState
    extends State<MobileBankingNavigationBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    AccountPage(),
    StatisticsPage(),
    CashbackPage(),
    SettingsPage()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0.0),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(Icons.credit_card),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp),
              label: 'BackendTest',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
