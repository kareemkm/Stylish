import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {

  final Widget icon ;

  const AuthButton({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFCF3F6),
        borderRadius: BorderRadius.circular(200),
        border: Border.all(color: const Color(0xFFF83758))
      ),
      child: icon,
    );
  }
}
