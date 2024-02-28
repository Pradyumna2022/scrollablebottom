import 'package:demo1/Renewal%20List/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CashPage extends StatefulWidget {
  const CashPage({super.key});

  @override
  State<CashPage> createState() => _CashPageState();
}

class _CashPageState extends State<CashPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .stretch, // Added to make sure the DataTable takes full width
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Search(),
        ),
        Column(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
            child: Table(
              border: TableBorder.all(
                  color: Colors.grey, style: BorderStyle.solid, width: 1),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Sr No.',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ]),
                  Column(children: [
                    Text('Member Id / Details',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ]),
                  Column(children: [
                    Text('Profile Image',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ]),
                  Column(children: [
                    Text('Expiry Date',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ]),
                  Column(children: [
                    Text('Status',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ]),
                  Column(children: [
                    Text('Actions',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('1',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                  Column(children: [
                    Text('ABC1297',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                  Column(children: [
                    Text('Image',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                  Column(children: [
                    Text('02-Mar-2024',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                  Column(children: [
                    Text('Under Session',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                  Column(children: [
                    Text('Print here',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                ]),
              ],
            ),
          ),
        ])
      ],
    );
  }
}
