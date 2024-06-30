import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makan_siang/page/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant,
              color: Colors.white,
              size: 100,
            ),
            Text(
              'Makan Siang',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
