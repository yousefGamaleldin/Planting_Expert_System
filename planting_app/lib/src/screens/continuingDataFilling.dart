import 'package:flutter/material.dart';
import '../shared/inputFields.dart';

class DataFilling extends StatefulWidget {
  @override
  _DataFillingState createState() => _DataFillingState();
}

class _DataFillingState extends State<DataFilling> {
  var l1 =['1','2','3','4','5','6','7'];
  var l1selected = '1';

  var l2 =['1','2','3','4','5','6','7'];
  var l2selected = '2';

  var l3 =['1','2','3','4','5','6','7'];
  var l3selected = '3';

  var l4 =['1','2','3','4','5','6','7'];
  var l4selected = '4';

  var l5 =['1','2','3','4','5','6','7'];
  var l5selected = '5';

  var l6 =['1','2','3','4','5','6','7'];
  var l6selected = '6';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Plant Information"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Stack(
            children:<Widget>[
              Align(
                alignment: Alignment.center,
                  child:Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l1.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l1selected = value;
                                });
                              },
                              value: l1selected,
                            ),
                          ),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l2.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l2selected = value;
                                });
                              },
                              value: l2selected,
                            ),
                          ),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l3.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l3selected = value;
                                });
                              },
                              value: l3selected,
                            ),
                          ),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l4.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l4selected = value;
                                });
                              },
                              value: l4selected,
                            ),
                          ),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l5.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l5selected = value;
                                });
                              },
                              value: l5selected,
                            ),
                          ),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: l6.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  l6selected = value;
                                });
                              },
                              value: l6selected,
                            ),
                          ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 

 