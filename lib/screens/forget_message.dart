import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/text_field.dart';

class ForgetMessage extends StatefulWidget {
  const ForgetMessage({super.key});

  @override
  State<ForgetMessage> createState() => _ForgetMessageState();
}

class _ForgetMessageState extends State<ForgetMessage> {

  final TextEditingController emailControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(right: 22, left: 22),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forget\nPassword?",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                MyTextField(
                    controller: emailControl,
                    label: "UserName or Email",
                    startIcon: const Icon(Icons.person),
                    endIcon: null
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "* We will send you a message to set or reset\nyour new password",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){},
                  child: const Button(textButton: "Submit"),
                )

              ],
            ),
          ),
        )
    );
  }
}
