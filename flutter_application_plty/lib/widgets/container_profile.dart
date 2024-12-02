import 'package:flutter/material.dart';
import 'package:flutter_application_plty/constants/app_icon.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Добавляем поддержку SVG
import '../themes/app_shadows.dart'; // Подключаем кастомные тени

// Виджет, отображающий контейнер с иконкой и текстом (SVG)
class ContainerPlty extends StatelessWidget {
  final String svgPath; // Путь к SVG-иконке
  final String svgText; // Путь к SVG-тексту

  const ContainerPlty({
    super.key,
    required this.svgPath,
    required this.svgText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // Внешние отступы
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 70, 70, 79), // Фон контейнера
          borderRadius: BorderRadius.circular(16), // Радиус скругления
          boxShadow: const [AppShadows.multipleShadows], // Кастомные тени
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16), // Внутренние отступы
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Центрируем содержимое
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  svgPath, // Отображаем SVG-иконку
                  width: 48,
                  height: 48,
                ),
                const SizedBox(width: 8), // Отступ между иконкой и текстом
                SvgPicture.asset(
                  svgText, // Отображаем SVG-текст
                  width: 136,
                  height: 48,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Карточка с информацией о студенте
class InfoCardStudent extends StatelessWidget {
  final String photoPath; // Путь к фото студента
  final String fullName; // ФИО студента
  final String course; // Курс
  final String group; // Группа
  final String studentID; // ID студента

  // Параметры для стилизации текста
  final TextStyle courseStyle;
  final TextStyle groupStyle;
  final TextStyle studentIDStyle;

  const InfoCardStudent({
    super.key,
    required this.photoPath,
    required this.fullName,
    required this.course,
    required this.group,
    required this.studentID,
    this.courseStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    this.groupStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    this.studentIDStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20), // Внешние отступы
      height: 120,
      child: Row(
        children: [
          // Фото студента
          Container(
            height: 120,
            width: 90,
            decoration: BoxDecoration(
              boxShadow: const [AppShadows.ClearShadow], // Тени вокруг фото
              borderRadius: BorderRadius.circular(16), // Скругленные углы
              color: Colors.white, // Цвет фона
            ),
            child: Container(
              padding: const EdgeInsets.all(4.0), // Внутренний отступ
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), // Скругление углов
                  color: Colors.redAccent, // Фон
                  image: DecorationImage(
                    image: AssetImage(photoPath), // Изображение студента
                    fit: BoxFit.cover, // Заполнение контейнера изображением
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 120,
            width: 8, // Отступ между фото и текстовой частью
          ),
          // Текстовая часть карточки
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [AppShadows.ClearShadow],
                image: const DecorationImage(
                  image: AssetImage('assets/faculty_picture/fivt.png'), // Изображение фона
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                children: [
                  // Отображение ФИО
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 6, 8, 6),
                      child: Row(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ф\nИ\nО', // Метка для ФИО
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  height: 1.2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 2, // Горизонтальная линия
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              fullName, // Отображение ФИО
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Информация о курсе, группе и ID
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 8, 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.school, size: 16),
                              const SizedBox(width: 8),
                              const Text('Курс: ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  )),
                              Text(course, style: courseStyle), // Динамический курс
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.group, size: 16),
                              const SizedBox(width: 8),
                              const Text('Группа: ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  )),
                              Text(group, style: groupStyle), // Динамическая группа
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.badge, size: 16),
                              const SizedBox(width: 8),
                              const Text('ID студента: ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  )),
                              Text(studentID, style: groupStyle), // Динамический ID
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Виджет для отображения блока информации о факультете
class InfoBlockFaculty extends StatelessWidget {
  final String faculty; // Название факультета
  final String direction; // Направление (специальность)
  final String profile; // Профиль
  final String email; // Электронная почта

  const InfoBlockFaculty({
    super.key,
    required this.faculty,
    required this.direction,
    required this.profile,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Белый фон для блока
          borderRadius: BorderRadius.circular(16), // Скругленные углы
          boxShadow: const [AppShadows.ClearShadow], // Тени для блока
        ),
        child: Expanded(
          child: Column(
            children: [
              // Информация о факультете
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.universiryIcon), // Иконка университета
                        const SizedBox(width: 16),
                        const Text(
                          'Факультет (институт)',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(40, 4, 16, 0),
                      child: Text(
                        faculty, // Название факультета
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Информация о направлении
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.teacherIcon), // Иконка направления
                        const SizedBox(width: 16),
                        const Text(
                          'Направление (специальность)',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(40, 4, 16, 0),
                      child: Text(
                        direction, // Динамическое направление
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Информация о профиле
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.toolsIcon), // Иконка профиля
                        const SizedBox(width: 16),
                        const Text(
                          'Профиль',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(40, 4, 16, 0),
                      child: Text(
                        profile, // Динамический профиль
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Информация об электронной почте
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.mailIcon), // Иконка электронной почты
                        const SizedBox(width: 16),
                        const Text(
                          'Почта',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 4, 16, 18),
                      child: Text(
                        email, // Динамический email
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
