import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0e1621),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Image.asset(
                  "assets/images/login1.png",
                  height: 200,
                ),
              )
              // Container(
              //   height: 300,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: const BoxDecoration(
              //       color: Color(0xFFde9805),
              //       borderRadius:
              //           BorderRadius.only(bottomRight: Radius.circular(65))),
              //   child: const Center(
              //     child: Text(
              //       "Login",
              //       style: TextStyle(
              //           fontFamily: "RubikVinyl-Regular",
              //           fontWeight: FontWeight.w700,
              //           fontSize: 50,
              //           color: Colors.white),
              //     ),
              //   ),
              // ),
              ,
              const SizedBox(height: 50),
              // loginPage(context)

              Container(
                height: MediaQuery.of(context).size.height / 1.90,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(children: [
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _emailController,
                        validator: (email) {
                          if (email != null && email.contains("@gmail.com") ||
                              email!.contains("@yahoo")) {
                            return null;
                          } else {
                            return ("email not valid");
                          }
                        },
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFde9805))),
                          prefixIcon:
                              Icon(Icons.email, color: Color(0xFFde9805)),
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 177, 176, 176)),
                        ),
                      ),
                    ),

                    // Paaword field //

                    const SizedBox(height: 30),
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        controller: _passwordController,
                        validator: (password) {
                          // ignore: unrelated_type_equality_checks
                          if (password!.length >= 6) {
                            return null;
                          } else {
                            return ("password must be 6 characters long");
                          }
                        },
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFde9805))),
                            prefixIcon:
                                Icon(Icons.lock, color: Color(0xFFde9805)),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 177, 176, 176)),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Material(
                        color: const Color(0xFFde9805),
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(20),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontFamily: "Poppins-Regular",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not registered?",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()),
                                (route) => false);
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                fontWeight: FontWeight.w800,
                                fontSize: 19,
                                color: Color(0xFFde9805)),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
