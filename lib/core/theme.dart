import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.purple,
  androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
  primaryColorDark: Colors.purple,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.purple,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.purple,
    primaryContainer: Colors.purple,
    secondary: Color.fromRGBO(176, 190, 197, 1.0),
    secondaryContainer: Color.fromRGBO(69, 90, 100, 1.0),
    background: Color.fromRGBO(255, 255, 255, 1.0),
    surface: Color.fromRGBO(255, 255, 255, 1.0),
    error: Color.fromRGBO(176, 0, 32, 1.0),
    onPrimary: Color.fromRGBO(255, 255, 255, 1.0),
    onSecondary: Color.fromRGBO(0, 0, 0, 1.0),
    onBackground: Color.fromRGBO(0, 0, 0, 1.0),
    onSurface: Color.fromRGBO(0, 0, 0, 1.0),
    onError: Color.fromRGBO(255, 255, 255, 1.0),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    errorMaxLines: 2,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(color: Colors.purple),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.purple,
    selectedLabelStyle: TextStyle(fontSize: 12),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.purple,
    showUnselectedLabels: true,
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      color: Color.fromRGBO(69, 90, 100, 1.0),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      ),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 5.0,
    shadowColor: Colors.white,
    margin: const EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 5.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  popupMenuTheme: PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    highlightElevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
    ),
    foregroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
    backgroundColor: Colors.purple,
  ),
  snackBarTheme: const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
    elevation: 0.0,
    contentTextStyle: TextStyle(
      color: Color.fromRGBO(225, 225, 225, 1.0),
    ),
  ),
);
