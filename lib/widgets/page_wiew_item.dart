
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/login.dart';


class PageViewItem extends StatelessWidget {

  final int pageNum ;
  final String image ;
  final String title ;
  final String description ;

  const PageViewItem({
    super.key,
    required this.pageNum,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "$pageNum",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                        const Text(
                          "/3",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())),
                      child: const Text(
                          "Skip",
                        style: TextStyle(
                          color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 120,),
                SvgPicture.asset(image),
                const SizedBox(height: 20,),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10,),
                Text(
                  description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                    fontSize: 15
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        )
      ),
    );
  }
}
