import 'package:flutter/material.dart';
import 'package:makan_siang/home.dart';

// ignore: must_be_immutable
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Info Pengembang',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Panji Kumbara\nRully Hidayatullah\nMuhammad Faizal',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 100), // Add some spacing
          ],
        ),
      ),
    );
  }
}
