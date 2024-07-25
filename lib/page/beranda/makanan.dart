import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Makanan',
      home: Makanan(),
    );
  }
}

class Makanan extends StatefulWidget {
  const Makanan({super.key});

  @override
  _MakananState createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  final List<FoodItem> foodItems = [
    FoodItem(
      name: "Pecel Lele",
      price: 15000,
      imagePath: 'assets/lele.png',
    ),
    FoodItem(
      name: "Nasi Uduk",
      price: 10000,
      imagePath: 'assets/uduk.jpg',
    ),
    FoodItem(
      name: "Soto Ayam",
      price: 12000,
      imagePath: 'assets/soto.png',
    ),
    FoodItem(
      name: "Sate Padang",
      price: 12000,
      imagePath: 'assets/satepadang.png',
    ),
    FoodItem(
      name: "Pempek",
      price: 10000,
      imagePath: 'assets/pempek.jpeg',
    ),
    FoodItem(
      name: "Rawon",
      price: 15000,
      imagePath: 'assets/rawon.jpeg',
    ),
    FoodItem(
      name: "Nasi Goreng",
      price: 12000,
      imagePath: 'assets/nasigoreng.jpeg',
    ),
    FoodItem(
      name: "Mie Ayam",
      price: 12000,
      imagePath: 'assets/mieayam.jpeg',
    ),
  ];

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
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(foodItem.imagePath),
              title: Text(foodItem.name),
              subtitle: Text("Harga: Rp ${foodItem.price}"),
            ),
          );
        },
      ),
    );
  }
}

class FoodItem {
  final String name;
  final int price;
  final String imagePath;

  FoodItem({
    required this.name,
    required this.price,
    required this.imagePath,
  });
}
