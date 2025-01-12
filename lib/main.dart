// Packages
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Google Fonts
import 'package:google_fonts/google_fonts.dart';

// Models
import 'package:phonebook/models/employee.dart';

// Pages
import './pages/splash_page.dart';
import './pages/categories_page.dart';



void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () => runApp(
        const ProviderScope(child: MyApp()),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const CategoriesPage(),


    );
  }
}

