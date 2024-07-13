import 'package:deadlinemanager/screens/userLogin.dart';
import 'package:deadlinemanager/utilities/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff2ecc87)),
                          image: DecorationImage(
                            image: AssetImage(adminLogo),
                            fit: BoxFit.contain,
                          ),
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                 const  Text(
                    "Admin Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserLogin()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff2ecc87)),
                          image: DecorationImage(
                            image: AssetImage(userLogo),
                            fit: BoxFit.contain,
                          ),
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                  const Text(
                    "User Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
