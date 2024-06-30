import 'package:flutter/material.dart';
import 'package:makan_siang/home.dart';

// ignore: must_be_immutable
class DisplayPage extends StatelessWidget {
  String? barcodeData;

  DisplayPage({super.key, required this.barcodeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$barcodeData'),
            const SizedBox(height: 20), // Add some spacing
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
