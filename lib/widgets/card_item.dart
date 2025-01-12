
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  final String image ;
  final String title ;
  final String description ;
  final String price ;
  final int rating ;

  const CardItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 170,
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 2
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 5,bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w200,
                      color: Colors.black
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  "R $price",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFF83758)
                  ),
                ),
                fiveStar(rating)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget fiveStar(int rate) {
    return Row(
      children: List.generate(5, (index){
        return Icon(
          Icons.star,
          color: index < rate ? Colors.orange : Colors.grey ,
          size: 20,
        );
      }),
    );
  }

}
