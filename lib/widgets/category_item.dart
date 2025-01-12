import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String image ;
  final String title ;

  const CategoryItem({
    super.key,
    required this.image,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontSize: 12
          ),
        )
      ],
    );
  }
}
