import 'package:flutter/material.dart';
import 'package:dwadmin/signup.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<screen> {
  @override
  void initState() {
    super.initState();

    // Introduce a 3-second delay before navigating to the next page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => signup(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500, // Adjust the width and height as needed
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/doxwipe.png'), // Replace with your image path
              fit: BoxFit.cover, // Cover the entire container
            ),
          ),
        ),
      ),
    );
  }
}
