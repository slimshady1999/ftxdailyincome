import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "ftxRegisterPage.dart";

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  _storeIntroScreenInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("introPage", isViewed);
  }

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
                      onTap: () async {
                        await _storeIntroScreenInfo();
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const FtxRegisterPage()),
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

//
/*

import "dart:async";

import "package:flutter/material.dart";
import "package:after_layout/after_layout.dart";
import "package:shared_preferences/shared_preferences.dart";

import 'ftxincomepage.dart';
import "fxtdashboard.dart";
import "intropage2.dart";

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with AfterLayoutMixin<IntroPage> {
  Future checkFirstScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool("seen") ?? false);

    if (_seen) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const FtxDashboard()),
          (route) => false);
    } else {
      await prefs.setBool("seen", true);
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const IntroPagetwo()),
          (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    checkFirstScreen();
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstScreen();

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
                                builder: (context) =>
                                    const FtxDailyIncomePage()),
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

  // @override
  // FutureOr<void> afterFirstLayout(BuildContext context) {
  //   // TODO: implement afterFirstLayout
  //   throw UnimplementedError();
  // }
}


*/