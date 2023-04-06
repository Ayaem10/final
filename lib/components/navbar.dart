import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(child: Image.asset('images/1.jpg')),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Name')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(endIndent: 50, indent: 50)

          // UserAccountsDrawerHeader(accountName: Text("menna"), accountEmail: Text("menna.com") ,
          // currentAccountPicture: CircleAvatar(
          //   child: ClipOval(child:Image.asset('images/home.jpg',
          //   // width: 200,height: 200,
          //   fit: BoxFit.cover,)),
          // ),
          // decoration: BoxDecoration(
          //   color: Colors.brown
          // ),),

          ,
          ListTile(
            title: Text('profile'),
            leading: Icon(Icons.person, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/login_doc');
            },
          ),
          ListTile(
            title: Text('location'),
            leading: Icon(Icons.location_pin, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/logo');
            },
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/logo');
            },
          ),
          ListTile(
            title: Text('change password'),
            leading: Icon(Icons.lock_outline_sharp, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/logo');
            },
          ),
          ListTile(
            title: Text('Help'),
            leading: Icon(Icons.help, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/logo');
            },
          ),
          ListTile(
            title: Text('cancer guide'),
            leading: Icon(Icons.help, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/cancerguide');
            },
          ),
          SizedBox(
            height: 150,
          ),
          Divider(endIndent: 50, indent: 50),
          ListTile(
            title: Text(
              'logout',
              style: TextStyle(color: Colors.blueAccent),
            ),
            leading: Icon(Icons.login_outlined, color: Colors.blueAccent),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/logo');
            },
          ),
        ],
      ),
    );
  }
}
