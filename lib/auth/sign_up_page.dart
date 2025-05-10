import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: -160,
              left: 10,
              right: 10,
              child: Image(
                image: AssetImage('assets/images/lightmode_authbackground.png'),
              ),
            ),
            const Positioned(
              left: 140,
              right: 10,
              top: 200,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF131A2E),
                ),
              ),
            ),
            const Positioned(
              left: 120,
              right: 10,
              top: 245,
              child: Text(
                "Let's create you an account.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF131A2E),
                ),
              ),
            ),
            Positioned(
              left: 22,
              right: 18,
              top: 309,
              child: SizedBox(
                child: TextFormField(
                  cursorColor: Colors.brown,
                  enabled: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                      bottom: 20,
                    ),
                    prefixIcon: const Icon(
                      Icons.phone_android_outlined,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 151, 154, 161)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: '+233 54 000 0000',
                    label: SizedBox(
                      width: 135,
                      child: Row(
                        children: [
                          const Text(
                            'PHONE NUMBER',
                            style: TextStyle(
                              color: Color(0xFF131A2E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22,
              right: 18,
              top: 390,
              child: SizedBox(
                height: 100,
                child: TextFormField(
                  cursorColor: Colors.brown,
                  enabled: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                      bottom: 20,
                    ),
                    prefixIcon: const Icon(
                      Icons.password,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 151, 154, 161)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: '********',
                    label: SizedBox(
                      width: 105,
                      child: Row(
                        children: [
                          const Text(
                            'PASSWORD',
                            style: TextStyle(
                              color: Color(0xFF131A2E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22,
              right: 18,
              top: 470,
              child: SizedBox(
                height: 100,
                child: TextFormField(
                  cursorColor: Colors.brown,
                  enabled: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                      bottom: 20,
                    ),
                    prefixIcon: const Icon(
                      Icons.password,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 151, 154, 161)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: '********',
                    label: SizedBox(
                      width: 130,
                      child: Row(
                        children: [
                          const Text(
                            'RE-PASSWORD',
                            style: TextStyle(
                              color: Color(0xFF131A2E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22,
              bottom: 100,
              right: 20,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF55433C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 5,
                      top: 5,
                      bottom: 5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 105,
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFA97C37),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 50,
              left: 90,
              child: Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              bottom: 37,
              left: 270,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFFA97C37),
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA97C37),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
