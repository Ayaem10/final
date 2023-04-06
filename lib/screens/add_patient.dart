import 'package:flutter/material.dart';

import '../components/textfield.dart';

class addPatient extends StatefulWidget {
  const addPatient({super.key});

  @override
  State<addPatient> createState() => _addPatientState();
}

class _addPatientState extends State<addPatient> {
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Add Patient',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  textfield(
                    text: 'Full name',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'User name',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Email',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Password',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Phone',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Cancer Type',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Diagnosis',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  textfield(
                    text: 'Treatment',
                    width: 313.37,
                    height: 56.76,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        textfield(
                          text: 'Age',
                          width: 140.92,
                          height: 56.76,
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        textfield(
                          text: 'Date',
                          width: 140.92,
                          height: 56.76,
                        ),
                      ],
                    ),
                  ),
                  CheckboxListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(color: Color.fromARGB(255, 163, 210, 222)),
                    ),
                    controlAffinity:
                        ListTileControlAffinity.leading, //checkbox at left
                    title: Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff777777),
                      ),
                    ),
                    value: _isMale,
                    onChanged: (val) {
                      _isMale = val!;
                      setState(() {});
                    },
                  ),
                  CheckboxListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(color: Color.fromARGB(255, 163, 210, 222)),
                    ),
                    controlAffinity:
                        ListTileControlAffinity.leading, //checkbox at left
                    title: Text(
                      'Female',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff777777),
                      ),
                    ),
                    value: _isFemale,
                    onChanged: (val) {
                      _isFemale = val!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
