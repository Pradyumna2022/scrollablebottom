import 'package:demo1/Renewal%20List/expired_page.dart';
import 'package:demo1/Renewal%20List/pending_page.dart';
import 'package:demo1/manageaccount/cash_page.dart';
import 'package:flutter/material.dart';

class RenewalListPage extends StatefulWidget {
  const RenewalListPage({super.key});

  @override
  State<RenewalListPage> createState() => _RenewalListPageState();
}

class _RenewalListPageState extends State<RenewalListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              dividerColor: Color(0xff102236),
              tabs: [
                Tab(
                  icon: Icon(Icons.circle_outlined),
                  text: 'Pending',
                ),
                Tab(
                  icon: Icon(Icons.circle_outlined),
                  text: 'Expired',
                ),
              ],
            ),
            title: const Text(
              'Renewal List',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: TabBarView(
            children: [PendingData(), ExpiredData()],
          ),
        ),
      ),
    );
  }
}
