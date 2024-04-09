import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/presentation/providers/sheduling_provider.dart';
import 'package:edi_pro/presentation/screens/sheduling_services_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              lazy: false,
              create: (_) => ShedulingProvider()..loadData())
          ],      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EdiPro',
        theme: AppTheme().getTheme(),
        home: const ShedulingServicesScreen(),
        )
      );
  }
}