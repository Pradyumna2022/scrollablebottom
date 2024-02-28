import 'package:demo1/const/color.dart';
import 'package:demo1/pages/trails_details_page.dart';
import 'package:demo1/widget/top_trails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 38.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                              width: 2)),
                      child: TextFormField(
                        cursorColor: Theme.of(context).colorScheme.secondary,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                                fontSize: 29),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.notifications,
                        color: Theme.of(context).colorScheme.primary),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Explore new",
                  style: TextStyle(
                      fontSize: 45,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              Text(
                "Experience",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),

              // new container

              SizedBox(
                height: height * 0.35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).colorScheme.onSecondary),
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/assets/images/shoes2.png',
                              scale: 4,
                            ),
                            Text(
                              "Equipment",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                                child: Center(
                                    child: Text(
                                  "Navigate",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ))),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                      child: Center(
                                          child: Text(
                                        "Hiking\nTips",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                        textAlign: TextAlign.center,
                                      ))),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                      child: Center(
                                          child: Column(
                                        children: [
                                          Image.asset(
                                            'lib/assets/images/shoes2.png',
                                          ),
                                          Text(
                                            "Shoes",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                          ),
                                        ],
                                      ))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Trails",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
              ),

              /// ********************  TOP TRAILS HERE **********************
              SizedBox(
                height: height * 0.36,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrailsDetailsPage()));
                  },
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return MyTopTrails(
                          imagePath: 'lib/assets/images/hillbg.jpg',
                          title: 'Lorem Ipsum',
                          subtitle: 'The Extremes of Good and Evil.',
                          color: buttonColor,
                          topText: 'Easy Track',
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
