import 'package:final_dart/screens/allPatient.dart';
import 'package:final_dart/screens/check_ypur_email.dart';
import 'package:final_dart/screens/forgot_password.dart';
import 'package:final_dart/screens/home_doc.dart';
import 'package:final_dart/screens/information.dart';
import 'package:final_dart/screens/logo.dart';
import 'package:final_dart/screens/patient_or_doctor.dart';
import 'package:final_dart/screens/search.dart';
import 'package:final_dart/screens/sign_up_doc.dart';
import 'package:final_dart/screens/signin_doctor.dart';
import 'package:final_dart/screens/signin_patient.dart';
import 'package:final_dart/screens/view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(final_app());
}

class final_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/logo': (context) {
          return Logo();
        },
        '/doc_or_patient': (context) {
          return PatientOrDoc();
        },
        '/signupdoc': (context) {
          return SignUp_doc();
        },
        'signin_pati': (context) {
          return Signin_Patient();
        },
        '/login_doc': (context) {
          return Signin_doc();
        },
        '/home_doc': (context) {
          return const HomeDoc();
        },
        '/forget_pass': (context) {
          return Forgot_Password();
        },
        '/cancerguide': (context) {
          return CancerGuide();
        },
        '/search': (context) {
          return SearchPage();
        },
        '/allPatient': (context) {
          return allPatient();
        },
        '/view': (context) {
          return view();
        },
        '/checkemail': (context) {
          return CheckYourEmail();
        }
      },
      // initialRoute: '/logo',
      initialRoute: '/doc_or_patient',
    );
  }
}
