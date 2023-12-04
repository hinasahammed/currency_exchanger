import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_coin/view/home.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple, brightness: Brightness.dark),
  useMaterial3: true,
  textTheme: GoogleFonts.robotoMonoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Global coin',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HomeView(),
    );
  }
}
