import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';
import 'package:shopping_app/global_variables.dart';
import 'package:shopping_app/home_page.dart';

import 'product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(providers: [
    //   ChangeNotifierProvider(create: (context)=>CartProvider()),
    // ],)
    //if u have multi providers u caa use multi provider 

    return ChangeNotifierProvider(
      create:(context)=>CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'Shopping App',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor:const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
          
          appBarTheme: AppBarTheme(
            
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16, 
            ),
            prefixIconColor: Color.fromRGBO(119,119,119,1),
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
              ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          useMaterial3: true,
        ),
        
        home: HomePage()
      ),
    );
  }
}

