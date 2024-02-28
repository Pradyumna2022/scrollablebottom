import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 2, left: 2),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 198, 198),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 0.5)),
      child: TextFormField(
        cursorColor: Colors.black,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.black, fontSize: 23),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
