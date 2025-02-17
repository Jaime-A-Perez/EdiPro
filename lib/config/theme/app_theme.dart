import 'package:flutter/material.dart';

extension CustomColorScheme on ThemeData {
  Color get titles => const Color(0xff002733);
  Color get titleSection => const Color(0xff001319).withOpacity(0.72);
  Color get bodyText => const Color.fromARGB(204, 0, 19, 25);
  Color get outlineButtonText => const Color(0xff002733).withOpacity(0.24);
}

class AppTheme {
  ThemeData getTheme() => ThemeData (
    
    useMaterial3: true,
    primaryColor: const Color(0xffE5F9FF),    
    dividerColor: const Color(0xff8E9DA4),
    cardColor: const Color(0xffFFFFFF),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: Color(0xffE5F9FF),
    ), textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 24
      ),
      bodyLarge: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      titleSmall: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: Color.fromARGB(183, 0, 19, 25), 
      ),
      titleMedium: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 18
      ),
      bodySmall: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 14
      ),
      bodyMedium: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w500,
        fontSize: 14
      ),
      labelMedium: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color:  Color(0xff004F66)
      ),
      labelLarge: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color:  Color(0xffE5F9FF),    
      ),
      labelSmall: TextStyle(
        fontFamily: 'SatoshiVariable',
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color:  Color(0xff004F66)
      ),
    )
  );
}
  