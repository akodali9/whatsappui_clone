import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff121b22),
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      secondary: Color.fromARGB(255, 13, 19, 24),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff1f2c34),
      titleTextStyle: TextStyle(color: Color(0xfff8f9faa)),
      actionsIconTheme: IconThemeData(
        color: Color(0xff80909a),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: const Color(0xff374248),
      backgroundColor: const Color(0xff1f2c34),
      iconTheme: MaterialStateProperty.all(
        const IconThemeData(
          color: Color(0xff8b9ca6),
        ),
      ),
      labelTextStyle: MaterialStateProperty.all(
        const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff8b9ca6)),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff008069),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xffffffff),
      labelTextStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
