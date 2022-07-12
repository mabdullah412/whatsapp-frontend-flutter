import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.080,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: dividerColor)),
      ),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}
