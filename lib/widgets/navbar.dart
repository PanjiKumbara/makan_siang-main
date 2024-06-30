import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makan_siang/page/info.dart';
import 'package:makan_siang/page/ubah.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Panji Kumbara'),
            accountEmail: Text('kasirunpanji@gmail.com'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text(
              'Ubah Profil',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UbahProfile()));
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              'Info Pengembang',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info()));
            },
            leading: Icon(Icons.info_outline),
          ),
          ListTile(
            title: Text(
              'Keluar',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
            leading: Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
    );
  }
}
