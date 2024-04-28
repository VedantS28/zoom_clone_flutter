import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: MaterialButton(
        onPressed: onPressed,
       color: buttonColor,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
       minWidth: double.infinity,
       height: 50,
        child: Text(
          text,
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}
