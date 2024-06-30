import 'package:flutter/material.dart';
import 'package:makan_siang/home.dart';

// ignore: must_be_immutable
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Pengembang'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Panji K - Front-End Engineer \n Rully H - Back-End Engineer \n M. Faisal - QA Engineer',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 100), // Add some spacing
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                  context, (MaterialPageRoute(builder: (context) => Home()))),
              child: const Text(
                'Kembali',
                style: TextStyle(color: Colors.red),
              ), // Customize button text
            ),
          ],
        ),
      ),
    );
  }
}
