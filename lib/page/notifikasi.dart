import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [AppBar(), Body()],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 50.0),
      child: Text(
        'Tidak Ada Notifikasi',
        style: TextStyle(fontSize: 10, color: Colors.grey),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.zero,
          bottomRight: Radius.circular(100),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 93, 176, 244),
            Colors.blue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifikasi',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              IconButton(
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
                onPressed: () => (),
                constraints: BoxConstraints(minWidth: 60, minHeight: 60),
                iconSize: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
