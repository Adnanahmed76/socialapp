import 'package:flutter/material.dart';
import 'package:mediaapp/pages/login_screen.dart';
import 'package:mediaapp/routes/approutes.dart';
import 'package:mediaapp/theme/dark_theme.dart';
import 'package:mediaapp/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkmode,
    
    
      initialRoute: '/',
      onGenerateRoute: Approutes.generateRoute,
    );
  }
}
