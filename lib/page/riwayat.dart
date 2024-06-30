import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
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
        'Tidak Ada Riwayart',
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
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.zero,
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
                'Riwayat',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              IconButton(
                icon: Icon(
                  Icons.print_outlined,
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
