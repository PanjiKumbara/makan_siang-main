import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makan_siang/widgets/navbar.dart';

class Profile extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 93, 176, 244),
                    Colors.blue,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: Colors.white, size: 30),
          ),
        ),
        endDrawer: NavBar(),
        body: Center(
          child: Text(
            'Profile Screen',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
