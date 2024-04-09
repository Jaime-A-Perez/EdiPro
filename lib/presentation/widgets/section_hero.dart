import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all( 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            child: Text(
              title, 
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,),
          ),          
          Padding(            
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
              suportingText, 
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}