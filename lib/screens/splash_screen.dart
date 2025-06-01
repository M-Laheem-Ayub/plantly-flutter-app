import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _topPosition = 0;
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _topPosition = -100;
        _opacity = 0.0;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: screenHeight / 2 - 100 + _topPosition,
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacity,
              child: Image.asset(
                "assets/icons/app-icon.png",
                width: screenWidth * 0.7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
