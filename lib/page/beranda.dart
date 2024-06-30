import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makan_siang/page/beranda/jadwal.dart';
import 'package:makan_siang/page/beranda/makanan.dart';
import 'package:makan_siang/page/chat.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Wrap(
            spacing: 30.0,
            runSpacing: 30.0,
            alignment: WrapAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
              buildCardButton(
                onTap: () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const Jadwal())),
                imagePath: "assets/calendar.png",
                label: "Jadwal",
              ),
              buildCardButton(
                onTap: () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const Makanan())),
                imagePath: "assets/cutlery.png",
                label: "Makanan",
              ),
              buildCardButton(
                onTap: () {
                  print("Button Petunjuk Pressed");
                },
                imagePath: "assets/user-guide.png",
                label: "Petunjuk",
              ),
              buildCardButton(
                onTap: () {
                  print("Button Lainnya Pressed");
                },
                imagePath: "assets/add.png",
                label: "Lainnya",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardButton({
    required VoidCallback onTap,
    required String imagePath,
    required String label,
  }) {
    return SizedBox(
      width: 160.0,
      height: 160.0,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Color.fromARGB(171, 255, 255, 255),
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 60.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
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
                'Halo, \nSelamat Datang',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const Chat())),
                constraints: BoxConstraints(minWidth: 80, minHeight: 80),
                iconSize: 30.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
