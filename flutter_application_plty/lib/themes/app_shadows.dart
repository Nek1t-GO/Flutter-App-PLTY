import 'package:flutter/material.dart';

class AppShadows {
  static const BoxShadow ClearShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.15), // Цвет тени с прозрачностью
    offset: Offset(0, 3), // Смещение тени (x, y)
    blurRadius: 2, // Радиус размытия тени
    spreadRadius: 0, // Расширение тени
  );

  static const BoxShadow multipleShadows = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.30),
    offset: Offset(0, 3),
    blurRadius: 1,
    spreadRadius: 0,
  );
}
