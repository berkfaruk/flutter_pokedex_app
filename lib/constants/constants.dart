import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static const String pokeballImageUrl = 'images/pokeball.png';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(24),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.toDouble();
    } else {
      return (size * 1.5).sp;
    }
  }

  static RoundedRectangleBorder getChipOutlineBorder() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      color: Colors.black,
    );
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
}
