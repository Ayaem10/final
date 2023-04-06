import 'package:final_dart/screens/add_patient.dart';
import 'package:final_dart/screens/allPatient.dart';
import 'package:final_dart/screens/logo.dart';
import 'package:final_dart/screens/sign_up_doc.dart';
import 'package:final_dart/screens/signin_patient.dart';
import 'package:final_dart/screens/view.dart';
import 'package:flutter/material.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import '../components/bottom_Navigation_bar.dart';
import '../components/button.dart';
import 'forgot_password.dart';
import 'home_doc.dart';
import 'information.dart';
import 'package:image_picker/image_picker.dart';

class PatientOrDoc extends StatefulWidget {
  PatientOrDoc({super.key});

  @override
  State<PatientOrDoc> createState() => _PatientOrDocState();
}

class _PatientOrDocState extends State<PatientOrDoc> {
  var pages = <Widget>[HomeDoc(), CancerGuide(), allPatient(), addPatient()];
  int selectedIndexxxx = 0;
  int counter = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndexxxx = index;
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Barr(onClicked: onItemTapped, selectedIndex: selectedIndexxxx),
      backgroundColor: Colors.white,
      body: counter == 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: Text('Get Started',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage('images/doctor (2).png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          'Your doctor any time\n         any where',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffA0A0A0)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Center(
                            child: Text(
                              'Sign as',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff777777)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      buttonn(
                          text: 'Patient',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Signin_Patient();
                              },
                            ));
                          }),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        'Or',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff82C4C3)),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      buttonn(
                          text: 'Doctor',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SignUp_doc();
                              },
                            ));
                          }),
                    ],
                  ),
                ],
              ))
          : pages[selectedIndexxxx],
    );
  }
}
