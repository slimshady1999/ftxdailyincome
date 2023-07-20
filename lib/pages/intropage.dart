import "package:flutter/material.dart";

import 'ftxincomepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Image.asset(
            "assets/images/logo1.png",
          ),
        ],
      ),
      backgroundColor: const Color(0xFF0e1621),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/image1.png",
                height: 160,
                width: 160,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: Text("ACHIEVE THE BEST DAILY INCOME.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Rubik-Bold")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 9.0, left: 13, right: 13),
            child: Text(
                "Invest and earn 20% return on investment daily with the new well profitable FTX-Income system.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Poppins-Regular",
                    fontWeight: FontWeight.w200)),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 180,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFde9805),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const FtxDailyIncomePage()),
                            (route) => false);
                      },
                      child: const Center(
                        child: Text("Start Investing...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: "Poppins-Regular",
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
