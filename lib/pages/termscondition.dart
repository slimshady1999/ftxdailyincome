import "package:flutter/material.dart";

class TermsOfCondition extends StatelessWidget {
  const TermsOfCondition({super.key});

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 10,
                right: 10,
              ),
              child: Text("Terms Of Condition.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: "Rubik-Bold")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 25.0, left: 15, right: 15, bottom: 40),
              child: Text(
                  textAlign: TextAlign.justify,
                  """We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don't burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.
      
      
      
              ACCEPTABLE USE POLICY
      
This acceptable use policy sets out the terms between you and us under which you may access our website www.ftxdailyincome.com This acceptable use policy applies to all users of, and visitors to, our site.
      
      
      
Your use of our site means that you accept, and agree to abide by, all the policies in this acceptable use policy, which supplement our terms of website use terms of use.
      
      
      
www.ftxdailyincome.com is a site operated by The Investment Company plc (we or us). 
      
      
      
         PROHIBITED USES
      
You may use our site only for lawful purposes. You may not use our site:
      
      
      
      In any way that breaches any applicable local, national or international law or regulation.
      
      In any way that is unlawful or fraudulent, or has any unlawful or fraudulent purpose or effect.
      
      For the purpose of harming or attempting to harm minors in any way.
      
      To send, knowingly receive, upload, download, use or re-use any material which does not comply with our content standards (see below).
      
      To transmit, or procure the sending of, any unsolicited or unauthorised advertising or promotional material or any other form of similar solicitation (spam).
      
      To knowingly transmit any data, send or upload any material that contains viruses, Trojan horses, worms, time-bombs, keystroke loggers, spyware, adware or any other harmful programs or similar computer code designed to adversely affect the operation of any computer software or hardware.
      
      You also agree:
      
      
      
      Not to reproduce, duplicate, copy or re-sell any part of our site in contravention of the provisions of our terms of website use terms of use.
      
      Not to access without authority, interfere with, damage or disrupt:
      
      any part of our site;
      
      any equipment or network on which our site is stored;
      
      any software used in the provision of our site; or
      
      any equipment or network or software owned or used by any third party. """,
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
