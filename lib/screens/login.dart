import 'package:flutter/material.dart';
import 'package:stylish/screens/forget_message.dart';
import 'package:stylish/screens/sign_up.dart';
import 'package:stylish/widgets/auth_button.dart';
import 'package:stylish/widgets/button.dart';
import 'package:stylish/widgets/text_field.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
                    "Welcome\nBack!",
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
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgetMessage()));
                    },
                    child: const Text(
                        "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFF83758)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              const Button(textButton: "Login"),
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
                    "Create Have an Account  ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "Sign Up",
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
