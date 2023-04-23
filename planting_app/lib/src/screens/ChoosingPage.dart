import 'package:flutter/material.dart';
import 'package:planting_app/src/screens/continuingDataFilling.dart';
import 'package:planting_app/src/screens/NewDataFilling.dart';
import 'package:planting_app/src/shared/buttons.dart';
import 'package:page_transition/page_transition.dart';

class ChoosingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Path"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.width*0.15,
                        child:pOutlineBtn("Get Advice on Plants", (){
                          Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: DataFilling()));
                        })
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.width*0.15,
                        child:pFlatBtn("Start Planting", (){
                          Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: NewDataFilling()));
                        })
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),),
      ),
      
    );
  }
}