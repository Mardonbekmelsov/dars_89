import 'package:dars_89/ui/screens/academic_screen.dart';
import 'package:dars_89/ui/screens/contact_screen.dart';
import 'package:dars_89/ui/screens/home_screen.dart';
import 'package:dars_89/ui/screens/language_screen.dart';
import 'package:dars_89/ui/screens/projects_screen.dart';
import 'package:dars_89/ui/screens/summary_screen.dart';
import 'package:dars_89/ui/screens/tech_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  HomeScreen(),
  SummaryScreen(),
  AcademicScreen(),
  ProjectsScreen(),
  TechScreen(),
  LanguageScreen(),
  ContactScreen(),
];
int curIndex = 0;
