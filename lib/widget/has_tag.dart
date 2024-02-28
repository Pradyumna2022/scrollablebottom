import 'package:demo1/const/color.dart';
import 'package:flutter/material.dart';

class HasTagWidget extends StatelessWidget {
  final String title;
  const HasTagWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: hasTagColor, width: 2)),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      child: Text(
        title,
        style: TextStyle(color: hasTagColor, fontSize: 15),
      ),
    );
  }
}
