import 'package:demo1/manageaccount/cash_page.dart';
import 'package:flutter/material.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({super.key});

  @override
  State<ManageAccount> createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                  text: 'Cash',
                ),
                Tab(
                  icon: Icon(Icons.circle_outlined),
                  text: 'Card',
                ),
                Tab(
                  icon: Icon(Icons.circle_outlined),
                  text: 'Cheque',
                ),
                Tab(
                  icon: Icon(Icons.circle_outlined),
                  text: 'Online',
                ),
              ],
            ),
            title: const Text(
              'Manage Accounts',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: TabBarView(
            children: [
              CashPage(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
