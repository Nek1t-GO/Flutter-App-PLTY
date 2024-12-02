import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 239, 239, 239),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Color.fromARGB(255, 27, 27, 33), size: 24),
      titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 70, 70, 79),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat'),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Colors.white, // Цвет фона навигационной панели
      elevation: 0,
      indicatorColor: Color.fromARGB(255, 224, 224, 255), // Цвет индикатора активной вкладки
      surfaceTintColor: Colors.white,
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 10, // Размер текста меток
          fontWeight: FontWeight.w600, // Жирность текста
          color: Color.fromRGBO(27, 27, 31, 1), // Цвет текста
          fontFamily: 'Montserrat', // Семейство шрифтов
        ),
      ),
    ),
    //iconTheme: const IconThemeData(),
    //textTheme: const TextTheme(),
  );
}
