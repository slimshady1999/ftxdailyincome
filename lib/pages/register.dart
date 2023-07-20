import "package:flutter/material.dart";

import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  // final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey();

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
                  "assets/images/register1.png",
                  height: 200,
                ),
              ),
              const SizedBox(height: 30),
              // loginPage(context)
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.60,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFde9805))),
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xFFde9805)),
                            hintText: "Username",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 177, 176, 176)),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
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
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 177, 176, 176)),
                          prefixIcon:
                              Icon(Icons.mail, color: Color(0xFFde9805)),
                          hintText: "Email",
                        ),
                      ),
                    ),

                    // Password field //

                    const SizedBox(height: 30),
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
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
                              borderSide: BorderSide(color: Color(0xFFde9805))),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 177, 176, 176)),
                          prefixIcon:
                              Icon(Icons.lock, color: Color(0xFFde9805)),
                          hintText: "Password",
                        ),
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
                              "Register",
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
                          "already a member?",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Color.fromARGB(255, 238, 238, 238)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                (route) => false);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                fontWeight: FontWeight.w800,
                                fontSize: 19,
                                color: Color(0xFFde9805)),
                          ),
                        )
                      ],
                    )
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
