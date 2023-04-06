import 'dart:convert';

import 'package:final_dart/components/button.dart';
import 'package:final_dart/screens/home_doc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../components/text_form_field.dart';

class Signin_doc extends StatefulWidget {
  Signin_doc({super.key});

  @override
  State<Signin_doc> createState() => _Signin_docState();
}

class _Signin_docState extends State<Signin_doc> {
  final _formkey = GlobalKey<FormState>();

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim());
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

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
              Navigator.of(context).pushReplacementNamed('/signupdoc');
            },
          )),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 112,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Inter'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 78,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                child: SizedBox(
                  width: query.size.width,
                  child: CustomTextField(
                    controller: _emailcontroller,
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0, right: 22.0),
                child: SizedBox(
                  width: query.size.width,
                  child: CustomTextField(
                    controller: _passwordcontroller,
                    func: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
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
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  TextButton(
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff82C4C3),
                          fontFamily: 'Inter'),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/forget_pass');
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 136,
              ),
              buttonn(
                text: 'Sign in',
                onPressed: () {
                  signin();

                  // if (_formkey.currentState!.validate()) {
                  //   signin();
                  //   // Navigator.of(context).pushReplacementNamed('/home_doc');
                  //   // login(emailcontroller.text, passwordcontroller.text);
                  //   // var mn = response.body;
                  //   // print(mn);
                  // }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 257, top: 25),
                child: SizedBox(
                    width: 105,
                    height: 83.49,
                    child: Image.asset('images/1.jpg')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   void login(String email, String password) async {
//     try {
//       Response response = await post(
//           Uri.parse('http://localhost:4000/doctor/signin'),
//           body: {'email': email, 'password': password});
//       if (response.statusCode == 200) {
//         Navigator.of(context).pushReplacementNamed('/signup_doc');

//         var data = jsonDecode(response.body.toString());
//         print(data);
//         print('login successfully');
//       } else {
//         print('failed');
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
