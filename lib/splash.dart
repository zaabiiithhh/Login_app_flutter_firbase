import 'package:flutter/material.dart';
import 'package:login_app/login.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
  }

  void navigatetologin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 231),
      body: Center(
        child: Lottie.asset('assets/splash.json', onLoaded: (compostion) {
          Future.delayed(compostion.duration, navigatetologin);
        }),
      ),
    );
  }
}
