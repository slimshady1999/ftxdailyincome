import "package:flutter/material.dart";

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 10,
                right: 10,
              ),
              child: Text("What information do we collect?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Rubik-Bold")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 25.0, left: 15, right: 15, bottom: 40),
              child: Text(
                  textAlign: TextAlign.justify,
                  "We  gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.. ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Poppins-Regular",
                      fontWeight: FontWeight.w200)),
            ),

            // POLICY 2 //

            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 10,
                right: 10,
              ),
              child: Text("How do we protect your information?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Rubik-Bold")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 25.0, left: 15, right: 15, bottom: 40),
              child: Text(
                  textAlign: TextAlign.justify,
                  """ All provided delicate/credit data is sent through Paystack.
After an exchange, your private data (credit cards, financials, and so on) won't be put away on our workers.""",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Poppins-Regular",
                      fontWeight: FontWeight.w200)),
            ),

            // POLICY 3 //

            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 10,
                right: 10,
              ),
              child: Text("Do we disclose any information to outside parties?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Rubik-Bold")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 25.0, left: 15, right: 15, bottom: 40),
              child: Text(
                  textAlign: TextAlign.justify,
                  " We don't sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others' rights, property, or wellbeing.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Poppins-Regular",
                      fontWeight: FontWeight.w200)),
            ),
          ],
        ),
      ),
    );
  }
}
