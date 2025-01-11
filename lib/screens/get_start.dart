
import 'package:flutter/material.dart';
import 'package:stylish/screens/dashboard_splash.dart';
import 'package:stylish/widgets/button.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_image.png'),
              fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.centerLeft,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "You want\nAuthentic,here\nyou go!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              const Text(
                "Find it here, buy it now!",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFF2F2F2)
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashboardSplash()));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Button(textButton: "Get Start",),
                )
              ),
              const SizedBox(height: 60,)
            ],
          ),
        )
      ),
    );
  }
}
