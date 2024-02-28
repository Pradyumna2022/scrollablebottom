import 'package:demo1/const/color.dart';
import 'package:demo1/widget/has_tag.dart';
import 'package:demo1/widget/more_details_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrailsDetailsPage extends StatelessWidget {
  const TrailsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                height: height * 0.5,
                child: Image.asset(
                  'lib/assets/images/hillbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).colorScheme.primary,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Theme.of(context).colorScheme.primary,
                        ))
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 120.0, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            child: Text(
                              'Hard Track',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                        Text(
                          'Argopuro\nTrails',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Text(
                          'We should have one scrollable.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MoreImageDetailsPage(),
                  MoreImageDetailsPage(),
                  MoreImageDetailsPage(),
                  MoreImageDetailsPage(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Text(
                'Trail Description',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5, right: 10),
              child: Text(
                'It look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  ipsum will uncover many web sites still in their infancy',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HasTagWidget(
                    title: '#backpacking',
                  ),
                  HasTagWidget(
                    title: '#camping',
                  ),
                  HasTagWidget(
                    title: '#hicking',
                  ),
                  HasTagWidget(
                    title: '#walking',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HasTagWidget(
                    title: '#forest',
                  ),
                  HasTagWidget(
                    title: '#trail',
                  ),
                  HasTagWidget(
                    title: '#historicsite',
                  ),
                  HasTagWidget(
                    title: '#wildlife',
                  ),
                  HasTagWidget(
                    title: '#lake',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: height * 0.12,
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 2, color: Theme.of(context).colorScheme.outline),
              ),
              padding: EdgeInsets.all(12),
              child: Icon(Icons.crop_sharp,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.08,
                child: Center(
                    child: Text(
                  "Navigation Track",
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
