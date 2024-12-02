import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_routes.dart'; // Импорт маршрутов
import '/constants/app_icon.dart'; // Импорт констант цветов

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = AppRoutes.profileIndex; // Начальная вкладка - Профиль

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Отображает активный экран
        children: AppRoutes.screens, // Список всех экранов
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Верхняя граница
          Container(
            height: 1,
            color: const Color.fromRGBO(228, 225, 236, 1),
          ),
          NavigationBar(
            selectedIndex: _selectedIndex, // Текущая выбранная вкладка
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index; // Обновление индекса
              });
            },
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(AppIcons.calendarCloseIcon),
                label: 'Расписание',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppIcons.examIcon),
                label: 'Экзамены',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppIcons.boolCloseIcon),
                label: 'Оценки',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppIcons.profileIcon),
                label: 'Профиль',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
