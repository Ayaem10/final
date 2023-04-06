import 'package:flutter/material.dart';

class HomeDoc extends StatelessWidget {
  const HomeDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  Text(
                    'hello tasneem',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff82C4C3),
                        fontFamily: 'Inter'),
                  ),),
    );
  }
}