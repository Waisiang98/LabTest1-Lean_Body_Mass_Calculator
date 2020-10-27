import 'package:flutter/material.dart';
import 'package:lab1/pages/calculate.dart';

class WaiSiang extends StatefulWidget {
  @override
  _WaiSiangState createState() => _WaiSiangState();
}

class _WaiSiangState extends State<WaiSiang> {
  double height=0.0;
  double weight=0.0;
  int groupvalue=0;
  int gendervalue=0;
  TextEditingController _height = new TextEditingController();
  TextEditingController _weight = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Lean Body Mass (Metric Unit)',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body:
      Column(
        children: [
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Gender :',
                  ),
                ),
                Container(
                  child: Radio(
                    value: 1 , groupValue: groupvalue , onChanged: (int value){onChanged(value);} ,
                  ),
                ),
                Container(
                  child: Text('Male'),
                ),
                Container(
                  child: Radio(
                    value: 2, groupValue: groupvalue, onChanged: ((int value) {onChanged(value);}),
                  ),
                ),
                Container(
                  child: Text('Female'),
                ),

              ],
            ),
          ),
          Row(
            children: [
              Container(
                child: Text('Age 14 or younger? :'),
              ),
              Container(
                child: Radio(
                  value: 1, groupValue: gendervalue, onChanged: (int value){onChanged1(value);},
                ),
              ),
              Container(
                child: Text('yes'),
              ),
              Container(
                child: Radio(
                  value: 2, groupValue: gendervalue, onChanged: (int value){onChanged1(value);},
                ),
              ),
              Container(
                child: Text('no'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text('Height :'),
              ),
              SizedBox(width:12),
              Container(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.green[300],
                    hintStyle: TextStyle(
                      color: Colors.black87,
                    ),
                    hintText: 'cm'

                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                  controller: _height,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                child: Text('Weight :'),
              ),
              SizedBox(width: 10),
              Container(
                width: 250,
                child: TextField(
                  decoration:
                  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                      filled: true,
                      fillColor: Colors.green[300],
                      hintText: 'kg',
                    hintStyle: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                  controller: _weight,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: RaisedButton.icon(onPressed: _calculate,
                    icon: Icon(Icons.play_arrow_rounded),
                    label: Text('Calculate',
                    ),
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: RaisedButton(
                  onPressed: _clear,
                  child: Text('Clear'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void onChanged(int value){
    setState(() {
      groupvalue = value;
    });
  }

  void onChanged1(int value){
    setState(() {
      gendervalue = value;
    });
  }

  void _calculate() {
    height = double.parse(_height.text);
    weight = double.parse(_weight.text);
    Calculate(groupvalue, gendervalue, height, weight);
    setState(() {
      Navigator.pushNamed(context,'/result');
    });
  }

  void _clear() {
    setState(() {
      _height.clear();
      _weight.clear();
      gendervalue=0;
      groupvalue=0;
    });

  }
}


