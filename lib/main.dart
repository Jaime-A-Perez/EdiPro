import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/presentation/screens/sheduling_services.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EdiPro',
      theme: AppTheme().getTheme(),
      home: const ShedulingServices()
    );
  }
}