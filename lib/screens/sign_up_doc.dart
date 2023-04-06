import 'dart:core';
import 'dart:convert';

import 'package:http/http.dart';

import '../components/button.dart';
import '../components/text_form_field.dart';
import 'package:final_dart/components/button.dart';
import 'package:http/http.dart' as http;
// import 'package:http/http.dart'as;
import 'package:flutter/material.dart';

class SignUp_doc extends StatefulWidget {
  const SignUp_doc({super.key});

  @override
  State<SignUp_doc> createState() => _SignUp_docState();
}

class _SignUp_docState extends State<SignUp_doc> {
  void initState() {
    super.initState();
  }

// Future<http.Response> createuser(String name,String username,String email,String password,String specialization,dynamic phone,dynamic dates) {
//   return http.post(
//     Uri.parse('http://localhost:4000/doctor/signup'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, dynamic>{
//       'name': name,
//       'username':username,
//       'email':email,
//       'password':password,
//       'phone':phone,
//       'specialization':specialization,
//       'Dates':dates
// }));
// }
  void signUp(String name, String username, String email, String password,
      String phone, String specialization, dynamic dates) async {
    try {
      Response response =
          await post(Uri.parse('http://127.0.0.1:4000/doctor/signup'), body: {
        "name": name,
        "username": username,
        "email": email,
        "password": password,
        "phone": phone,
        "specialization": specialization,
        "Dates": dates
      });
      if (response.statusCode == 200) {
        Navigator.of(context).pushReplacementNamed('/signup_doc');

        var data = jsonDecode(response.body.toString());
        print(data);
        print('login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  final _formkey = GlobalKey<FormState>();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController specializationcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController datescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 64, left: 18, bottom: 17),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                  child: SizedBox(
                      width: query.size.width,
                      child: CustomTextField(
                        controller: namecontroller,
                        func: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the name';
                          } else {
                            return null;
                          }
                        },
                        type: TextInputType.name,
                        hintText: 'Full name',
                        icon: Icon(Icons.person),
                      )),
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                  child: SizedBox(
                      width: query.size.width,
                      child: CustomTextField(
                        controller: usernamecontroller,
                        func: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return 'please enter the user name ';
                          } else {
                            return null;
                          }
                        },
                        type: TextInputType.name,
                        hintText: 'user name',
                        icon: Icon(Icons.person),
                      )),
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                  child: SizedBox(
                    width: query.size.width,
                    child: CustomTextField(
                      controller: emailcontroller,
                      func: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.endsWith('.com')) {
                          return 'please enter correct email';
                        } else {
                          return null;
                        }
                      },
                      type: TextInputType.emailAddress,
                      hintText: 'Email',
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                  child: SizedBox(
                    width: query.size.width,
                    child: CustomTextField(
                      controller: passwordcontroller,
                      func: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return 'please enter correct password';
                        } else {
                          return null;
                        }
                      },
                      type: TextInputType.visiblePassword,
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 22, right: 21),
                    child: CustomTextField(
                      controller: specializationcontroller,
                      func: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your specialization please';
                        } else {
                          return null;
                        }
                      },
                      type: TextInputType.name,
                      hintText: 'Specialization',
                      icon: ImageIcon(AssetImage('images/doctor (3) 1.png')),
                    )),
                SizedBox(
                  height: 9,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 22, right: 21),
                    child: CustomTextField(
                      controller: phonecontroller,
                      func: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your correct phone please';
                        } else {
                          return null;
                        }
                      },
                      type: TextInputType.phone,
                      hintText: 'phone',
                      icon: Icon(Icons.phone),
                    )),
                SizedBox(
                  height: 9,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 22, right: 21),
                    child: CustomTextField(
                      controller: datescontroller,
                      func: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your correct phone please';
                        } else {
                          return null;
                        }
                      },
                      type: TextInputType.text,
                      hintText: 'Date',
                      icon: Icon(Icons.date_range),
                    )),
                const SizedBox(
                  height: 22,
                ),
                buttonn(
                    text: ('Sign up'),
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        signUp(
                            namecontroller.text,
                            usernamecontroller.text,
                            emailcontroller.text,
                            passwordcontroller.text,
                            phonecontroller.text,
                            specializationcontroller.text,
                            datescontroller.text);

                        //  print() ;
                        // var mn = response.body;
                        // print(mn);
                        // print(mn.runtimeType);
                        // print(response.runtimeType);
                      }
                    })
                // Navigator.of(context)
                //     .pushReplacementNamed('/allPatient');

                ,
                Row(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 85, top: 69),
                        child: Row(
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffA0A0A0),
                                  fontFamily: 'Inter'),
                            ),
                            Text(
                              'sign in',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff82C4C3),
                                  fontFamily: 'Inter'),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/login_doc');
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 257,
                  ),
                  child: SizedBox(
                      width: 105,
                      height: 83.49,
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
