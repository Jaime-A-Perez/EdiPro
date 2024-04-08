import 'package:flutter/material.dart';

extension CustomColorScheme on ThemeData {
  Color get titles => const Color(0xff002733);
  Color get bodyText => const Color.fromARGB(204, 0, 19, 25);
  Color get outlineButtonText => const Color(0xff004F66);
}

class AppTheme {
  ThemeData getTheme() => ThemeData (
    
    useMaterial3: true,
    primaryColor: const Color(0xffE5F9FF),    
    dividerColor: const Color(0xff8E9DA4),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: Color(0xffE5F9FF),
    )
  );
}
  