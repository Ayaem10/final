import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_dart/screens/allPatient.dart';
import 'package:final_dart/screens/home_doc.dart';
import 'package:final_dart/screens/information.dart';
import 'package:final_dart/screens/logo.dart';
import 'package:final_dart/screens/patient_or_doctor.dart';
import 'package:flutter/material.dart';
import 'forgot_password.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var pages = <Widget>[
    PatientOrDoc(),
    allPatient(),
    Forgot_Password(),
    CancerGuide(),
    Logo(),
  ];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icon(Icons.home), title: 'Home'),
          TabItem(
              icon: CircleAvatar(
                  child: ClipOval(
                      child: ImageIcon(
                AssetImage('images/doctor (2).png'),
              ))),
              title: 'Doctors'),
          TabItem(icon: Icon(Icons.add), title: 'Instructions'),
          TabItem(icon: Icon(Icons.message), title: 'Cancer guide'),
          TabItem(icon: Icon(Icons.settings), title: 'settings'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Color(0xff82C4C3),
        activeColor: Colors.white,
      ),

      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.greenAccent,
      //   unselectedItemColor: Colors.grey, // Fixed
      //   backgroundColor: Color(0xff82C4C3),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(AssetImage('images/doctor (2).png')),
      //       label: 'Doctors',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Instructions',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'Cancer guide',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,

      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
