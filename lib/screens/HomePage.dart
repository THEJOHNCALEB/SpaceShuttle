import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Text(
        'Book a Ride to Space',
        style: TextStyle(fontSize: 43, color: Color.fromRGBO(255, 255, 255, 1)),
      ),
    ));
  }
}
