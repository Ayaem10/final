
import 'package:final_dart/models/doc_accountModel.dart';
import 'package:final_dart/providers/docproviders.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}
var doctorrrrr;
class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    
     doctorrrrr=Provider.of<docproviders>(context).docdata!;
    
    return Scaffold(
      body:Column(
      children: [
        Center(
          child:Text('${doctorrrrr.date.toString()}')),
          
Text('${doctorrrrr.phone.toString()}')
          
      ],
    ));
  }
}