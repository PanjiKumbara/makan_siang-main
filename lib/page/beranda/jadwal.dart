import 'package:flutter/material.dart';

void main() => runApp(AplikasiSaya());

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jadwal Harian',
      home: Jadwal(),
    );
  }
}

class Jadwal extends StatefulWidget {
  const Jadwal({super.key});

  @override
  _JadwalState createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  final List<JadwalHarian> jadwalHarian = [
    JadwalHarian(hari: "Senin", makanan: "Nasi Goreng"),
    JadwalHarian(hari: "Selasa", makanan: "Sate Ayam"),
    JadwalHarian(hari: "Rabu", makanan: "Gado-Gado"),
    JadwalHarian(hari: "Kamis", makanan: "Soto Ayam"),
    JadwalHarian(hari: "Jumat", makanan: "Mie Goreng"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jadwal Harian',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: jadwalHarian.length,
        itemBuilder: (context, index) {
          final jadwal = jadwalHarian[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(jadwal.hari),
              subtitle: Text("Makanan: ${jadwal.makanan}"),
            ),
          );
        },
      ),
    );
  }
}

class JadwalHarian {
  final String hari;
  final String makanan;

  JadwalHarian({
    required this.hari,
    required this.makanan,
  });
}
