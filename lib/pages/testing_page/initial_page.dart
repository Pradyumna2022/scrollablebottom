import 'package:demo1/pages/home_page.dart';
import 'package:demo1/pages/inbox_page.dart';
import 'package:demo1/pages/plan_page.dart';
import 'package:demo1/pages/profile_page.dart';
import 'package:demo1/pages/testing_page/inheritedD.dart';
import 'package:flutter/material.dart';

int currentPageIndex = 0;

class InfiniteListPage extends StatefulWidget {
  // final Color color;
  const InfiniteListPage({Key? key}) : super(key: key);

  @override
  State<InfiniteListPage> createState() => _InfiniteListPageState();
}

class _InfiniteListPageState extends State<InfiniteListPage> {
  List<Widget> pages = [
    const HomePage(),
    PlanPage(),
    Text(
      "fhsdfsd",
      style: TextStyle(color: Colors.white),
    ),
    Text(
      "dsfhsdh",
      style: TextStyle(color: Colors.white),
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateCurrentPageIndex(currentPageIndex);
    print(currentPageIndex.toString() + 'THIS IS INIT CURRENT INDEX');
  }

  void updateCurrentPageIndex(int newIndex) {
    setState(() {
      currentPageIndex = newIndex;
      print(currentPageIndex.toString() + 'THIS IS INIT CURRENT INDEX');
    });
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller =
        InheritedDataProvider.of(context).scrollController;
    return ListView.builder(
      controller: controller,
      itemCount: 1, // Only one item
      itemBuilder: (context, index) {
        print(currentPageIndex.toString() +
            pages[currentPageIndex].toString() +
            'THIS IS YOUR CURRENT INDEX');
        return pages[currentPageIndex]; // Display the current page
      },
    );
  }
}
