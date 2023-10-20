import 'package:elearning/Customs/custom_main_button.dart';
import 'package:elearning/views/login_view.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4A334),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "Assets/students.png",
          height: 250,
          width: 350,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 16, top: 64),
          child: Text(
            "Omar Magdy School",
            style: TextStyle(
                fontSize: 27, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        const Text(
          "Check School posts to stay updated with school news.",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const Text(
          "Take quizzes, test at home all through your phone.",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomMainButton(
              text: "Get started",
              backgroundColor: Colors.white,
              textColor: const Color(0xFFF4A334),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Loginview();
                }));
              }),
        )
      ]),
    );
  }
}
