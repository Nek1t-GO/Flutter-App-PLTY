import 'package:flutter/material.dart';
import 'package:flutter_application_plty/routes/main_navigation.dart';
import 'package:flutter_application_plty/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const MainNavigation(),
    );
  }
}
