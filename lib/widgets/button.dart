import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textButton ;
  const Button({super.key, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF83758),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          textButton,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}
