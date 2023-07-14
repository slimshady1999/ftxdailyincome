import "package:flutter/material.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0e1621),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("ssets/images/Ripple.gif")],
      ),
    );
  }
}
