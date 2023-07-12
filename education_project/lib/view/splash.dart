import 'package:education_project/recurring/color_variations.dart';
import 'package:education_project/view/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorVariations.darkWhite,
      body: Center(
          child: Image(image: AssetImage("assets/images/adu_splash.png"))

          // Image.network(
          //     "https://tasarimcantasi.com/uploads/posts/2016-11/1479126246_main.png"),
          ),
    );
  }
}
