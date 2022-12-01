import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff45bf5d),
            Color(0xff88db94),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/welcomePic.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Choose your login method.",
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Earn QuizCash",
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/facebook.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                      "I have read and agree to",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Terms & Condition",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3989d5),
                      ),
                    ),
                    Text(
                      "Privacy & Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3989d5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
