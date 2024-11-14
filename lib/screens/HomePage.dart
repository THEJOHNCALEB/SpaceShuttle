import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                _homeHeaderWidget(),
                _mainImageWidget(context),
                _startedButtonWidget(context),
              ],
            )));
  }

  Widget _homeHeaderWidget() {
    return const Text(
      "ASTRO",
      style: TextStyle(
          color: Colors.white,
          fontSize: 37,
          fontWeight: FontWeight.w900,
          letterSpacing: 26
        ),
    );
  }

  Widget _mainImageWidget(context) {
    var _deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: _deviceHeight * 0.7,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/astro.png"),
              fit: BoxFit.contain)),
    );
  }

  Widget _startedButtonWidget(context) {
    var _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: _deviceWidth * 0.9, // Add vertical margin
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white, // Button background color
          padding: const EdgeInsets.symmetric(vertical: 20), // Add padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
        ),
        child: const Text(
          'GET STARTED',
          style: TextStyle(
              color: Colors.black, // Text color
              fontSize: 18, // Text size
              fontWeight: FontWeight.bold, // Bold text
              letterSpacing: 7),
        ),
      ),
    );
  }
}
