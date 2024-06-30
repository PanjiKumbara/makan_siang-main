import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Makanan extends StatefulWidget {
  const Makanan({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MakananState createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Makanan',
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
