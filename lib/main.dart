import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Shopping App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromRGBO(254, 206, 1, 1)),
        fontFamily: 'Lato',
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16, 
          ),
          prefixIconColor: Color.fromRGBO(119,119,119,1),
        ),
      ),
      
      home:const HomePage(),
    );
  }
}

