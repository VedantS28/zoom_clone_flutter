import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/customtextfield.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void userLogin() async {
    FirebaseAuthMethods().loginWithEmail(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Login Using Email",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 28,
        ),
        CustomTextField(
          controller: emailController,
          label: "Email",
          icon: Icons.face,
          isPassword: false,
        ),
        CustomTextField(
          controller: passwordController,
          label: "Password",
          icon: Icons.password,
          isPassword: true,
        ),
        CustomButton(text: "Login", onPressed: userLogin),
        const SizedBox(
          height: 5,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't Have an account ?",
              style: TextStyle(color: Colors.white,fontSize: 16),
            ),
             const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/signup");
              },
              child: Text(
                "SignUp",
                style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Colors.blue,fontSize: 16),
              ),
            )
          ],
        )
      ],
    ));
  }
}
