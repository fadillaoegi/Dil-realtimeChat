import 'package:flutter/material.dart';
import 'package:realtimechat/modules/prsentations/screens/app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScreen();
  }
}