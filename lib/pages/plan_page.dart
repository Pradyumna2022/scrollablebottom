import 'package:flutter/material.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 300,
            width: 300,
            child: Center(
              child: Text("plan page"),
            ),
          ),
          Container(
            color: Colors.redAccent,
            height: 300,
            width: 300,
            child: Center(
              child: Text("plan page"),
            ),
          ),
          Container(
            color: Colors.white,
            height: 300,
            width: 300,
            child: Center(
              child: Text("plan page"),
            ),
          ),
        ],
      ),
    ));
  }
}
