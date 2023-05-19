import 'dart:async';

import 'package:catchcountry_flutter_app/home.dart';
import 'package:catchcountry_flutter_app/utility/Typografie.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:transition/transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(
          context,
          Transition(
              child: const HomeScreen(),
              transitionEffect: TransitionEffect.SCALE));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(152, 200, 208, 1),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Lottie.asset('assets/lotties/earth2.json'),
          Typografie().splashLarge("C . C", Colors.white),
          Typografie().splashMedium("Catch Country", Colors.white),
        ],
      )),
    );
  }
}
