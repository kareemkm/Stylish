
import 'package:flutter/material.dart';
import 'package:stylish/screens/login.dart';
import 'package:stylish/widgets/page_wiew_item.dart';
class DashboardSplash extends StatefulWidget {
  const DashboardSplash({super.key});

  @override
  State<DashboardSplash> createState() => _DashboardSplashState();
}

class _DashboardSplashState extends State<DashboardSplash> {

  int _currentPage = 0 ;
  final PageController _controller = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page){
                setState(() {
                  _currentPage = page ;
                });
              },
              children: [
                PageViewItem(
                    pageNum: _currentPage + 1,
                    image: "assets/images/splash_one.svg",
                    title: "Choose Products",
                    description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
                ),
                PageViewItem(
                    pageNum: _currentPage + 1,
                    image: "assets/images/splash_two.svg",
                    title: "Make Payment",
                    description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
                ),
                PageViewItem(
                    pageNum: _currentPage + 1,
                    image: "assets/images/splash_three.svg",
                    title: "Get Your Order",
                    description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
                )
              ],
            ),
            Positioned(
                bottom: 30,
                right: 30,
                left: 0,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: Text(
                      _currentPage == 2 ? "Get Start" : "",
                      style:  const TextStyle(
                        color: Color(0xFFF83758),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  )
                )
            ),
            Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => buildDot(index)),

                )
            )
          ],
        )
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: _currentPage == index ? 50 : 10,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }














}
