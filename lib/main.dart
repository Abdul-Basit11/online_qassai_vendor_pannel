import 'package:flutter/material.dart';


import 'configuration/custom_app_theme.dart';
import 'navigation/routes_generator.dart';
import 'navigation/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.customThemeData(context),

      initialRoute: RoutesName.splashView,
      onGenerateRoute: RoutesGenerator.generateRoute,

    );
  }
}
