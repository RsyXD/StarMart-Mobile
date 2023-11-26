import 'dart:async';
import 'package:flutter/material.dart';
import 'package:starbhakmart_mobile/screens/home_screen.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Set timer untuk navigasi ke halaman berikutnya setelah 3 detik
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(35, 45, 63, 1), Colors.cyanAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopify_sharp,
              size: 85,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Starmart',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
