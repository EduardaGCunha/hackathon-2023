import 'package:flutter/material.dart';
import 'package:new_project/screens/cesta_screen.dart';
import 'package:new_project/screens/home_screen.dart';
import 'package:new_project/utils/app_routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vendas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        AppRoutes.CESTA_SCREEN: (ctx) => const CestaScreen(),
        AppRoutes.HOME_SCREEN: (ctx) => const HomeScreen(),
      },
    );
  }
}
