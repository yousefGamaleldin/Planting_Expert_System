import 'dart:core';
import 'package:flutter/material.dart';
import 'package:planting_app/src/screens/Instructions.dart';


class UserInfo{
  String _plantingIvironment;
  String _weather;
  String _plant;
  double _plantWidth;
  double _plantHight;
  double _plantStalkWidth;
  int _colorScale;
  String _goal;

  UserInfo({String plant , String plantingIvironment , double plantHight , double plantWidth , String goal, String weather , int color}){
    _plant = plant;
    _plantingIvironment = plantingIvironment;
    _plantHight = plantHight;
    _plantWidth = plantWidth;
    _colorScale = color;
    _goal = goal;
    _weather = weather;
  }

  void setWeather(String weather){
    weather=weather;
  }
 void setPlantType(String t){
    _plant=t;
  }
  void setPlantWidth(double width){
    _plantWidth=width;
  }
  void setPlantHeight(double height){
    _plantHight=height;
  }
  void setPlantStalkWedth(double stalkWidth){
    _plantStalkWidth=stalkWidth;
  }
  void setColorScale(int colorScale){
    colorScale=colorScale;
  }
  void  setPlantingIvironment(String place){
    _plantingIvironment = place;
  }
  void setGoal(String goal){
    _goal = goal;
  }


  String getWeather(){
    return _weather;
  }
  String getPlantType(){
    return _plant;
  }
  double getPlantWidth(){
    return _plantWidth;
  }
  double getPlantHeight(){
    return _plantHight;
  }
  double getPlantStalkWedth(){
    return _plantStalkWidth;
  }
  int getColorScale(){
    return _colorScale;
  }
  String getPlantingIvironment(){
    return _plantingIvironment;
  }
  String getGoal(){
    return _goal;
  }

  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );


  fetchInstructions(context){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
      return new Instructions(plant: getPlantType(),environmnt: getPlantingIvironment(),);
    }));
  }

  advising(context){
  
  AlertDialog alert = AlertDialog(
    title: Text("$_plant"),
    content: Text("This is your results for $_plantWidth, $_colorScale "),
    actions: [
      okButton,
    ],
  );
  
  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
  }

}