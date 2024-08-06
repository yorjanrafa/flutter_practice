import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_functions_screens.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_application_1/presentation/screens/counter/piedra_papel_tijeras.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.sakura),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.sakura),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      home: const PiedraPapelTijeras(),
    );
  }
}
