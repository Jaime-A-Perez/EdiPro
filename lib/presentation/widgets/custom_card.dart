import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.08),
          spreadRadius: 1, 
          blurRadius: 2, 
          offset: const Offset(0,1)
          )],
      color:theme.cardColor,
        border: Border.all(
          color: theme.dividerColor
        )),
      height: 268,
      width: 311,
    );
  }
}