import 'package:final_dart/screens/add_patient.dart';
import 'package:final_dart/screens/sign_up_doc.dart';
import 'package:final_dart/screens/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import '../screens/allPatient.dart';
import '../screens/forgot_password.dart';
import '../screens/home_doc.dart';
import '../screens/information.dart';
import '../screens/patient_or_doctor.dart';

class Barr extends StatelessWidget {
  Barr({this.selectedIndex, this.onClicked});
  final selectedIndex;
  ValueChanged<int>? onClicked;
  @override
  Widget build(BuildContext context) {
    var pages = <Widget>[HomeDoc(), CancerGuide(), allPatient(), addPatient()];
    return BottomNavigationBar(
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey, // Fixed
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/doctor (2).png')),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Instructions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Cancer guide',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onClicked);
  }
}
