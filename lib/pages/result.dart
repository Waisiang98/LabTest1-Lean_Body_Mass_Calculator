import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/pages/calculate.dart';


class result extends StatefulWidget {
  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Result',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DataTable(
            columnSpacing: 10.0,
            showBottomBorder: true,
            columns: [
              DataColumn(label: Text('Formulae')),
              DataColumn(label: Text('Lean Body Mass')),
              DataColumn(label: Text('Body Fat')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Boey')),
                DataCell(Text(boer+'kg ($boerpercentage%)')),
                DataCell(Text(boerfat+'%')),
              ]),
              DataRow(cells: [
                DataCell(Text('James')),
                DataCell(Text(james+'kg ($jamespercentage%)')),
                DataCell(Text(jamesfat+'%')),
              ]),
              DataRow(cells: [
                DataCell(Text('Hume')),
                DataCell(Text(hume+'kg ($humepercentage%)')),
                DataCell(Text(humefat+'%')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
