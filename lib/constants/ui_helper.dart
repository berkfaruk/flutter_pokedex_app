import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.1.sw;
  }

  static double getAppTitleImageWidth() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw;
  }

  static EdgeInsets getDefaultPadding(){
    if(ScreenUtil().orientation == Orientation.portrait){
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(12.w);
    }
  }

  static EdgeInsets getIconPadding(){
    if(ScreenUtil().orientation == Orientation.portrait){
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }

  static int getCrossAxisCount(){
    return ScreenUtil().orientation == Orientation.portrait ? 2 : 4;
  }

  static double calculatePokeImageAndBallSize(){
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type){
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}
