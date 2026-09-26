import 'package:flutter/material.dart';
import 'package:sapasi/core/routing/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '가족 가계부',
      routerConfig: router(),
      //네비게이션의 구조를 보고싶다면 router() 함수를 읽어보세요.
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
