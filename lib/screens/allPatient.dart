import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:image_picker/image_picker.dart';
import '../components/navbar.dart';
import 'dart:io'as io;
class allPatient extends StatefulWidget {
  const allPatient({super.key});

  @override
  State<allPatient> createState() => _allPatientState();
}

class _allPatientState extends State<allPatient> {
  ImagePicker picker = ImagePicker();
  List<XFile>? images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      endDrawer: Navbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'search',
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Text(
            'All patients',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () async {
                images = await picker.pickMultiImage();
                setState(() {
                  
                });
              },
              child: Icon(Icons.add)),
              images==null?CircularProgressIndicator():
              Image.file(io.File(images![0].path))
        ],
      ),
    );
  }
}
