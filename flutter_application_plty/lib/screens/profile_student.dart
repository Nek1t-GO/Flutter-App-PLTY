import 'package:flutter/material.dart';
import 'package:flutter_application_plty/constants/app_icon.dart';
import 'package:flutter_application_plty/routes/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart'; // добавляем svg иконки
import '../widgets/container_profile.dart'; // добавляем контейнеры

class ProfileStudentScreen extends StatelessWidget {
  const ProfileStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.menuIcon), // иконка Drawer
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppIcons.exitIcon), // иконка Выхода
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppRoutes.screens[AppRoutes.Authorization],
                ),
              );
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Растянуть по ширине
            children: [
              ContainerPlty(
                svgPath: 'assets/icons/logo_plty.svg',
                svgText: 'assets/icons/text_plty.svg',
              ),
              InfoCardStudent(
                photoPath: 'assets/images/demo_photo.png',
                fullName: 'Александрова Екатерина Александровна',
                course: '2',
                group: 'БИ-22',
                studentID: '12345678',
              ),
              InfoBlockFaculty(
                faculty: 'Факультет информатики и вычислительной техники',
                direction: '(10.05.03) Информационная безопасность автоматизированных систем',
                profile: '(12) Анализ безопасности информационных сетей',
                email: 'nikitakholkin598@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
