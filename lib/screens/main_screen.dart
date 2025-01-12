import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/screens/cart_screen.dart';
import 'package:stylish/screens/home_screen.dart';
import 'package:stylish/screens/search_screen.dart';
import 'package:stylish/screens/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0 ;
  List screens = const [
    HomeScreen(),
    CartScreen(),
    SearchScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset(
          'assets/images/start_app_logo.svg',
          fit: BoxFit.cover,
          height: 40,
          width: 120,
        ),
        centerTitle: true,
        leading: SvgPicture.asset(
          'assets/images/option_button.svg',
          fit: BoxFit.scaleDown,
        ),
        actions: [
          Image.asset(
            'assets/images/profile.png',
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(width: 20,),
        ],
      ),

      body: screens[currentIndex],

      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        elevation: 20,
        color: const Color(0xFFFDFDFD),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (){
                  setState(() {
                    currentIndex = 0 ;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  color: currentIndex == 0 ? const Color(0xFFF83758) : Colors.grey,
                )
            ),
            IconButton(
                onPressed: (){
                  setState(() {
                    currentIndex = 1 ;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: currentIndex == 1 ? const Color(0xFFF83758) : Colors.grey,
                )
            ),
            IconButton(
                onPressed: (){
                  setState(() {
                    currentIndex = 2 ;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentIndex == 2 ? const Color(0xFFF83758) : Colors.grey,
                )
            ),
            IconButton(
                onPressed: (){
                  setState(() {
                    currentIndex = 3 ;
                  });
                },
                icon: Icon(
                  Icons.settings,
                  color: currentIndex == 3 ? const Color(0xFFF83758) : Colors.grey,
                )
            )
          ],
        ),
      ),
    );
  }
}
