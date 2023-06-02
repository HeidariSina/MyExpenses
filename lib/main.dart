import 'package:flutter/material.dart';
import 'components/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String appBarText = "Home";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black),
        // colorScheme: ColorScheme.dark(background: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Your Expenses",
                style: TextStyle(
                  color: Color(0xffe16b5c),
                ))),
        body: const BottomNavBar(),
      ),
    );
  }
}
