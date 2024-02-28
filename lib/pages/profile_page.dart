import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.yellow,
      height: 300,
      width: 300,
      child: Center(
        child: Text("profile page"),
      ),
    ));
  }
}
