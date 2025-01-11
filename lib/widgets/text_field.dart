import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final TextEditingController controller ;
  final String label ;
  final Icon startIcon ;
  final Icon? endIcon ;





   const MyTextField({
     super.key ,
     required this.controller,
     required this.label,
     required this.startIcon,
     required this.endIcon,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            hintText: label,
            hintStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF676767)
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFF83758))
            ),
            prefixIcon: startIcon,
            suffixIcon: endIcon
        ),
        keyboardType: TextInputType.emailAddress,
        maxLines: 3,

      ),
    );
  }
}
