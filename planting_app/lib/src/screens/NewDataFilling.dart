import 'package:flutter/material.dart';
import '../services/Expert_sys.dart';


class NewDataFilling extends StatefulWidget {
  @override
  _NewDataFillingState createState() => _NewDataFillingState();
}

class _NewDataFillingState extends State<NewDataFilling> {
  var _plantingEnv =['Open Gardin','Closed Gardin','Balcony','In-doors','Green House'];
  var envselected = 'Open Gardin';

  var _plant =['Mint','Tomato','Lime','Sun Flour'];
  var plantselected = 'Mint';

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
                        Text('Choose the place you will olant in'),
                        Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: _plantingEnv.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  envselected = value;
                                });
                              },
                              value: envselected,
                            ),
                          ),
                          Text('Choose a Plant'),
                          Container(
                            child:DropdownButton<String>(
                              isExpanded: true,
                              items: _plant.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  plantselected = value;
                                });
                              },
                              value: plantselected,
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
                            child:FlatButton(
                              child: Icon(Icons.add,color: Colors.blueGrey,),
                              onPressed: (){
                                UserInfo(plantselected, envselected).fetchInstructions(context);
                              },
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

 