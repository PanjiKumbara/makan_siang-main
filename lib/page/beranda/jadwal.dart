import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Jadwal extends StatefulWidget {
  const Jadwal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JadwalState createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jadwal',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
    );
  }
}
