import 'package:flutter/material.dart';
import '/screens/loading_screen.dart';
import '/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bartex',
      home: LoadingScreen(), // Start with the loading screen
      routes: {
        '/login': (context) =>
            LoginScreen(), // Define a route for the login screen
      },
    );
  }
}
