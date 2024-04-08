import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EdiPro',
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title:  Text('EdiPro', style: TextStyle(color: color.titles),),
        ),
        body: Center(
          child: Text('Hello World', style: TextStyle(color: color.bodyText)),
        ),
      ),
    );
  }
}