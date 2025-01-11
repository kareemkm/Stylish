import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/screens/login.dart';

import '../widgets/auth_button.dart';
import '../widgets/button.dart';
import '../widgets/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwordControl = TextEditingController();

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
                    "Create an\nAccount",
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
                MyTextField(
                    controller: passwordControl,
                    label: "Password",
                    startIcon: const Icon(Icons.lock),
                    endIcon: const Icon(Icons.remove_red_eye)
                ),
                const SizedBox(height: 30,),
                MyTextField(
                    controller: passwordControl,
                    label: "Confirm Password",
                    startIcon: const Icon(Icons.lock),
                    endIcon: const Icon(Icons.remove_red_eye)
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "By clicking the Register button,you agree\nto the public offer",
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
                  child: const Button(textButton: "Create Account"),
                ),
                const SizedBox(height: 40,),
                const Text(
                  "- OR Continue with -",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthButton(icon: Image.asset('assets/images/google.png')),
                    AuthButton(icon: SvgPicture.asset('assets/images/apple.svg',fit: BoxFit.scaleDown,)),
                    AuthButton(icon: SvgPicture.asset('assets/images/facebook.svg',fit: BoxFit.scaleDown,)),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "I Already Have an Account  ",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF83758)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        )
    );
  }
}
