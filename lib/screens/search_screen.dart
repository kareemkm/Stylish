import 'package:flutter/material.dart';
import 'package:stylish/model/product.dart';
import 'package:stylish/widgets/card_item.dart';
import 'package:stylish/widgets/search_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final TextEditingController search = TextEditingController();

  final ProductData productData = ProductData();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(right: 25,left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25,),
            SearchTextField(
                search: search,
                onSearchClick: (){}
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  "${productData.list.length} item",
                  style: const TextStyle(
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
            const SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: 0.55

                  ),
                itemCount: productData.list.length,
                itemBuilder: (context,index) => CardItem(
                  image: productData.list[index].image,
                  title: productData.list[index].title,
                  description: productData.list[index].description,
                  price: productData.list[index].price,
                  rating: productData.list[index].rating
                              ),
              ),
            )
          ],
        ),
      )
    );
  }
}
