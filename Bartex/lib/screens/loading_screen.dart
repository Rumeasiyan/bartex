import 'package:Bartex/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:Bartex/screens/login_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds before navigating to the Login screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3499FF),
              Color.fromRGBO(58, 57, 133, 0.79),
            ],
            stops: [
              0.1025,
              1.23,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/logo/bartex_logo_text.png',
            width: 255, // specify the width of the image
            height: 117, // specify the height of the image
          ),
        ),
      ),
    );
  }
}
