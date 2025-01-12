
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {

  final TextEditingController search ;
  final VoidCallback onSearchClick ;

  const SearchTextField({
    super.key,
    required this.search,
    required this.onSearchClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7)
      ),
      child: TextField(
        controller: search,
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.mic,
            color: Colors.grey,
          ),
          hintText: "Search any Product..",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.w300
          )
        ),
        cursorColor: Colors.grey,
      ),
    );
  }
}
