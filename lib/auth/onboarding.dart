import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/app_logo.png',
                fit: BoxFit.cover,
                height: 70,
                width: 70,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'COFFEE TASTE!',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xFF131A2E),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Image(
              image: AssetImage('assets/images/lightmode_authbackground.png'),
            ),
            const Text(
              'Find your favorite',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF131A2E),
              ),
            ),
            const Text(
              'Coffee Taste!',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 34,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Color(0xFF131A2E),
              ),
            ),
            const Text(
              "We're a coffee shop, beer and wine bar",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF131A2E),
              ),
            ),
            const Text(
              '& event space for performing arts',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF131A2E),
              ),
            ),

            //button
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
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
          ],
        ),
      ),
    );
  }
}
