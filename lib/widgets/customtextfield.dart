import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final IconData icon;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.icon,
      required this.isPassword,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          labelStyle: const TextStyle(color: Colors.white),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
