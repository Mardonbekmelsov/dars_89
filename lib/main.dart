import 'package:dars_89/blocs/screens_bloc.dart';
import 'package:dars_89/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreensBloc(),
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
