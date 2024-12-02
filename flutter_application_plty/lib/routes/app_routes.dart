import 'package:flutter/material.dart';
import '/screens/profile_student.dart';
import '/screens/exams_screen.dart';
import '/screens/grades_screen.dart';
import '/screens/schedule_screen.dart';
import '/screens/authorization_screen.dart';

class AppRoutes {
  static const int scheduleIndex = 0;
  static const int examsIndex = 1;
  static const int gradesIndex = 2;
  static const int profileIndex = 3;
  static const int Authorization = 4;

  static final List<Widget> screens = [
    const ScheduleScreen(),
    const ExamsScreen(),
    const GradesScreen(),
    const ProfileStudentScreen(),
    const AuthorizationScreen(),
  ];
}
