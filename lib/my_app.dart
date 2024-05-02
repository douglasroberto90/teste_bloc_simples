import 'package:flutter/material.dart';
import 'package:teste_bloc_simples/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exemplo BLoC 1',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}