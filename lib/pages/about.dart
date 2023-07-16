import "package:flutter/material.dart";

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
              child: Text("About FTXdailyincome.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Rubik-Bold")),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 9.0, left: 13, right: 13),
              child: Text(
                  "FTXdailyincome is a global entity. We provide professional wealth management and financial investment services to individuals, businesses and organizations. Our depth knowledge, and commitment to excellence and service positions us uniquely to meet complex financial needs of our clients.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Poppins-Regular",
                      fontWeight: FontWeight.w200)),
            ),

            // Content 1 //

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/performance.png",
                ),
                title: const Text("Performance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Rubik-Bold")),
                subtitle: const Text("Ultimate performance at low cost",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Poppins-Regular")),
              ),
            ),

            // Content 2 //

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/world.png",
                ),
                title: const Text("World Wide Service",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Rubik-Bold")),
                subtitle: const Text(
                    "Servicing over 2000+ customers from 100+ countries",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Poppins-Regular")),
              ),
            ),

            // Content 3 //

            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 26),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/euro.png",
                ),
                title: const Text("Multiple Investments",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Rubik-Bold")),
                subtitle: const Text("We are offering 10+ investment plans",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Poppins-Regular")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
