import "package:flutter/material.dart";

import 'intropage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => const IntroPage())),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: const Color(0xFF0e1621),
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Ripple.gif",
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text("FTX Daily Income",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Rubik-Bold")),
          ),
        )
      ]),
    );
  }
}
