import 'package:demo1/pages/home_page.dart';
import 'package:demo1/pages/inbox_page.dart';
import 'package:demo1/pages/plan_page.dart';
import 'package:demo1/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late ScrollController _hideButtonController;
  var _isVisible;

  @override
  void initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  int selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const PlanPage(),
    const InboxPage(),
    const ProfilePage()
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      key: scaffoldKey,
      body: Stack(
        children: [
          NestedScrollView(
            floatHeaderSlivers: true,
            controller: _hideButtonController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  toolbarHeight: 0,
                  floating: true,
                  snap: false,
                )
              ];
            },
            body: IndexedStack(
              children: pages,
              index: selectedIndex,
            ),
          ),
          AnimatedPositioned(
            // curve: Curves.ease,
            duration: Duration(milliseconds: 600),
            bottom: _isVisible ? 10 : -kBottomNavigationBarHeight,
            left: 10,
            right: 10,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 600),
              opacity: _isVisible ? 1.0 : 0.0,
              child: Container(
                clipBehavior: Clip
                    .hardEdge, //or better look(and cost) using clip.antialias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: BottomNavigationBar(
                  // showSelectedLabels: false,
                  // showUnselectedLabels: false,
                  currentIndex: selectedIndex,
                  onTap: (newIndex) {
                    setState(() {
                      selectedIndex = newIndex;
                    });
                  },
                  items: bottomBarItems(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems() {
    return [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home, color: Colors.white),
      ),
      BottomNavigationBarItem(
        label: 'Plan',
        icon: Icon(Icons.track_changes, color: Colors.white),
      ),
      const BottomNavigationBarItem(
        label: 'Message',
        icon: const Icon(Icons.messenger_outline_rounded, color: Colors.white),
      ),
      const BottomNavigationBarItem(
        label: 'Profile',
        icon: const Icon(Icons.person, color: Colors.white),
      ),
    ];
  }
}
