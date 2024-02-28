import 'package:demo1/Renewal%20List/renewal_list.dart';
import 'package:demo1/manageaccount/manageaccount.dart';
import 'package:demo1/pages/bottom_bar.dart';
import 'package:demo1/pages/testing_page/first.dart';
import 'package:demo1/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: BottomBar(),
    );
  }
}
