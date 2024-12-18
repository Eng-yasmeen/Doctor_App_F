import 'package:doctor_app/home.dart';
import 'package:doctor_app/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool check = false;

  String? email, password;

  bool isLoading = true;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff58b4c9),
        title: const Text(
          "Sing In ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Image.asset('images/online-doctor-consultation-flat-design-logo-aplication-free-vector.jpg'),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'CITY HOSPITAL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff2d8ea1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 28, 123, 206)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 28, 123, 206)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    label: const Text(
                      'Username',
                      style: TextStyle(color: const Color(0xff2d8ea1)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 28, 123, 206)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    label: const Text(
                      'Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 28, 123, 206)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Remember Me',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Checkbox(
                          activeColor:
                          const Color(0xff2d8ea1),
                          value: check,
                          onChanged: (val) {
                            setState(() {
                              check = val!;
                            });
                          }),
                    ),
                  ],
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xff2d8ea1),
                          borderRadius: BorderRadiusDirectional.circular(30)),
                      child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: const Color(0xff2d8ea1),
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: const Text("Sign UP ",
                            style: TextStyle(
                                color: const Color(0xff58b4c9),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Center(
                //   child: const Text(
                //     " youseef abdo ",
                //     style:
                //         TextStyle(color: Color.fromARGB(255,28, 123, 206), fontWeight: FontWeight.w900),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}