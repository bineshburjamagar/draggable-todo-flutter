import 'package:flutter/material.dart';
import 'package:todo_flutter/config/apptheme.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
