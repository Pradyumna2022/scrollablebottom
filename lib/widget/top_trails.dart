import 'package:demo1/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTopTrails extends StatelessWidget {
  final Color color;
  final String topText;
  final String title;
  final String imagePath;
  final String subtitle;
  const MyTopTrails(
      {super.key,
      required this.color,
      required this.subtitle,
      required this.title,
      required this.topText,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width * 0.8,
          decoration: BoxDecoration(),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Stack(children: [
              SizedBox(
                width: width,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: height * 0.12,
                  color: containerColor,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
        Positioned(
            left: width * 0.08,
            top: height * 0.04,
            child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Text(
                  topText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))),
      ],
    );
  }
}
