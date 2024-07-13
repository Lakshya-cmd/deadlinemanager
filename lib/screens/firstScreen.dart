import 'package:deadlinemanager/screens/loginScreen.dart';
import 'package:deadlinemanager/utilities/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logoImage),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2ecc87),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xff2ecc87)),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff2ecc87),
                      fontWeight: FontWeight.w700),
                )))
          ],
        ),
      ),
    );
  }
}
