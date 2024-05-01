import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final AuthMethods _authMethod = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Start or join a meeting",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38),
            child: Image.asset("assets/images/login.jpg"),
          ),
          CustomButton(
            text: "Login with google",
            onPressed: () {},
          ),
          CustomButton(
            text: "Login with Credentials",
            onPressed: () {
              Navigator.pushNamed(context, "/signup");
            },
          ),
        ],
      ),
    ));
  }
}
