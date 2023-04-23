import 'package:flutter/material.dart';
import 'package:planting_app/src/shared/styles.dart';

class Instructions extends StatefulWidget {
  final String plant;
  final String environmnt;

  const Instructions({Key key, this.plant, this.environmnt}) : super(key: key);
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.plant),
        centerTitle: true,
      ),
      body: Container(
        child:Stack(
          children: <Widget>[
            Text(widget.plant, style: h4,),
            Center(
              child:Stack(
                children: <Widget>[
                  Text('You are looking for instructions')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}