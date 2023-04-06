import 'package:final_dart/components/button.dart';
import 'package:final_dart/components/text_form_field.dart';
import 'package:flutter/material.dart';

class Forgot_Password extends StatelessWidget {
  Forgot_Password({super.key});
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('signin_pati');
            },
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 68,
                ),
                SizedBox(
                    height: 163.48,
                    width: 163.48,
                    child: Image.asset('images/illustration.png')),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 42.64, left: 88),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 49),
                      child: Text(
                        'Don’t worry! It happens. Please enter the email associated \n with your account.',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff777777),
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 55,
                ),
                CustomTextField(
                  controller: email,
                  hintText: 'Email',
                  icon: Icon(Icons.email),
                  func: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.endsWith('.com')) {
                      return 'wrong email';
                    } else {
                      return null;
                    }
                  },
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                buttonn(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/checkemail');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 255, top: 168),
                  child: SizedBox(
                      width: 105,
                      height: 92,
                      child: Image.asset('images/1.jpg')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
