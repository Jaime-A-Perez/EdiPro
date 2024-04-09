import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SectionHero extends StatelessWidget {
  final String title;
  final String suportingText;
  const SectionHero({
    super.key, 
    required this.title, 
    required this.suportingText
    });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme().getTheme().textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            child: Text(title, style: textTheme.titleLarge,),
          ),
          
          Text(suportingText, style: textTheme.bodyLarge,)
        ],
      ),
    );
  }
}