
import 'package:flutter/material.dart';
import 'package:stylish/model/category.dart';
import 'package:stylish/model/product.dart';
import 'package:stylish/widgets/card_item.dart';
import 'package:stylish/widgets/category_item.dart';
import 'package:stylish/widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CategoryData categoryData = CategoryData() ;
  final ProductData productData = ProductData();

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Container(
        padding: const EdgeInsets.only(right: 25,left: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25,),
              SearchTextField(
                  search: search,
                  onSearchClick: (){} ,
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "All Featured",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Row(
                        children: [
                          Text(
                            " Sort  ",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.sort,
                            color: Colors.black,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Row(
                        children: [
                          Text(
                            " Filter  ",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.black,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryData.list.length,
                    itemBuilder: (context,index) {
                      return CategoryItem(
                          image: categoryData.list[index].image,
                          title: categoryData.list[index].title
                      );
                    }
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 20,top: 35,bottom: 35),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/shop.jpg",),
                    fit: BoxFit.cover
                  )
                ),
                child:   Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "50-40% OFF",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      const Text(
                        "Now in (product)",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 13
                        ),
                      ),
                      const Text(
                        "All colours",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 13
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)
                        ),
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF4392F9),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.white
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm,color: Colors.white,),
                            Text(
                              " 22h 55m 20s remaining ",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w200,
                                color: Colors.white
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)
                      ),
                      child: const Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 260,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productData.list.length,
                    itemBuilder: (context,index) => CardItem(
                        image: productData.list[index].image,
                        title: productData.list[index].title,
                        description: productData.list[index].description,
                        price: productData.list[index].price,
                        rating: productData.list[index].rating
                    )
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      child: Image.asset(
                          "assets/images/new.png"
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "New Arrivals ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.black
                                ),
                              ),
                              Text(
                                " Summer’ 25 Collections",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF83758),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "View all",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 260,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productData.list.length,
                    itemBuilder: (context,index) => CardItem(
                        image: productData.list[index].image,
                        title: productData.list[index].title,
                        description: productData.list[index].description,
                        price: productData.list[index].price,
                        rating: productData.list[index].rating
                    )
                ),
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text(
                    "Sponsored",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      child: Image.asset(
                          "assets/images/sponsored.png"
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "up to 50% Off",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,)
            ],
          ),
        ),
      )
    );
  }
}
