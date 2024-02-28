import 'package:flutter/material.dart';

class MoreImageDetailsPage extends StatelessWidget {
  const MoreImageDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.13,
      width: width * 0.21,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'lib/assets/images/hillbg.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
