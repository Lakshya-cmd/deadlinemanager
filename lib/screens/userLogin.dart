import 'package:deadlinemanager/screens/loginForm.dart';
import 'package:deadlinemanager/screens/userRegistration.dart';
import 'package:deadlinemanager/utilities/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff2ecc87)),
                    image: DecorationImage(
                      image: AssetImage(userLogo),
                      fit: BoxFit.contain,
                    ),
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(80)),
              ),
              SizedBox(height: 32),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTextField(
                        _emailController, "email", Icon(Icons.email), " email"),
                    const SizedBox(height: 16),
                    customTextField(_passwordController, "password",
                        Icon(Icons.lock), " password"),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Perform login action
                        }
                      },
                      child: const Text('Login'),
                    ),
                    const Column(
                      children: [
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     UserRegistration()));
                      },
                      child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: const Color(0xff2ecc87)),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff2ecc87),
                                fontWeight: FontWeight.w700),
                          ))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField customTextField(TextEditingController controller,
      String labelText, Icon icon, String WarnText) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: icon,
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your' + WarnText;
        }
        return null;
      },
    );
  }
}
