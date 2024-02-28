import 'package:demo1/pages/home_page.dart';
import 'package:demo1/pages/inbox_page.dart';
import 'package:demo1/pages/plan_page.dart';
import 'package:demo1/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ScrollController _hideButtonController;

  var _isVisible;
  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();
  List<Widget> pages = [HomePage(), PlanPage(), ProfilePage()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomPadding: true,
      drawer: Container(),
      key: scaffoldKey,
      body: NestedScrollView(
        controller: _hideButtonController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // elevation: 10.0,
              // expandedHeight: 0,
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

      bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 600),
          height: _isVisible ? 55.0 : 0.0,
          child: _isVisible
              ? AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  height: _isVisible ? 70.0 : 0.0,
                  child: _isVisible
                      ? BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          items: [
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.card_giftcard),
                              label: 'Offer',
                            ),
                            new BottomNavigationBarItem(
                              icon: Icon(Icons.account_box),
                              label: 'Account',
                            ),
                          ],
                          currentIndex: selectedIndex,
                          onTap: (newIndex) {
                            debugPrint(selectedIndex.toString() +
                                pages[selectedIndex].toString() +
                                ' this is your indexing');
                            setState(() {
                              selectedIndex = newIndex;
                              pages[selectedIndex];
                            });
                          },
                        )
                      : SizedBox())
              : SizedBox()),

//                _isVisible
//                  ? bottomNavigationBar()
//                  : Container(
//                      height: 0.0,
//                      width: MediaQuery.of(context).size.width,
//                    ),
    );
  }
}
