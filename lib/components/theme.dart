import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData darkMode = ThemeData(
  primarySwatch: Colors.orange,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.orange,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 18,
    iconTheme: const IconThemeData(color: Colors.white),
    systemOverlayStyle:
    SystemUiOverlayStyle(statusBarColor: HexColor('333739')),
    elevation: 0,
    backgroundColor: HexColor('333739'),
    titleTextStyle: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.orange,
    backgroundColor: HexColor('333739'),
    elevation: 20,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
  ),
  scaffoldBackgroundColor: HexColor('333739'),
);
ThemeData lightMode = ThemeData(
  primarySwatch: Colors.orange,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.orange,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
      titleSpacing: 18,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      elevation: 0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.orange,
    elevation: 20,
  ),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black)),
);