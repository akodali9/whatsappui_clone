import 'package:flutter/material.dart';
import 'package:whatsappui_clone/Screens/home_page.dart';
import 'package:whatsappui_clone/provider/Theme_provider.dart';

void main() {
  runApp(const MainApp());
}

class AppStateNotifier extends ChangeNotifier {
  bool isDarkMode = false;

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
