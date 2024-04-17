
import 'package:flutter/material.dart';

class ThemeConst {

  ThemeConst._();

  static getApplicationTheme(){

    return ThemeData(
      
      primaryColor: const Color(0xFF3b6cf2),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFF3b6cf2),
        unselectedItemColor: Color(0xFF646464),
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 12
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12
        )
      ),

      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white
        )
      )
    );
  }
}