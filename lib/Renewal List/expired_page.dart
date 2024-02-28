import 'package:demo1/Renewal%20List/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExpiredData extends StatefulWidget {
  const ExpiredData({super.key});

  @override
  State<ExpiredData> createState() => _ExpiredDataState();
}

class _ExpiredDataState extends State<ExpiredData> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Search(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            defaultColumnWidth: IntrinsicColumnWidth(),
            border: TableBorder.all(
                color: Colors.grey, style: BorderStyle.solid, width: 1),
            children: [
              TableRow(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Sr No.',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Member Id / Details',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Profile Image',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Expiry Date',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Status',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text('Actions',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ]),
                  ]),
              TableRow(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('5',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[400]))
                      ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ABC1297',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[400])),
                        Container(
                          margin: EdgeInsets.only(top: 4, bottom: 4),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('akash',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400])),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('9898999999',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400])),
                        ),
                        Container(
                          // margin: EdgeInsets.only(bottom: 4),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('dggcft@gmchu.bj',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400])),
                        )
                      ]),
                ),
                Column(children: [
                  Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'lib/assets/images/hillbg.jpg',
                        fit: BoxFit.cover,
                      ))
                ]),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4),
                  child: Column(children: [
                    Text('02-Mar-2024',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]))
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('Expired',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400])),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('-1 days left',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400])),
                        ),
                      ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.search),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.edit),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.print),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.forward),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.send),
                    ),
                  ]),
                ),
              ])
            ],
          ),
        )
      ],
    );
  }
}
