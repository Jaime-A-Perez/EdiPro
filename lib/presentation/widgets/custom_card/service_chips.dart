import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ServiceChips extends StatelessWidget {
  const ServiceChips({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          _CustomOutlineButton(
            theme: theme, 
            textButton: 'Furniture and shelves',
            icon: Icons.assessment,
            ),
      
          _CustomOutlineButton(
            theme: theme, 
            textButton: 'Wooden frames',
            icon: Icons.assessment,
            ),
      
          _CustomOutlineButton(
            theme: theme, 
            textButton: 'More',
            icon: Icons.assessment,
            ),
        ],
      ),
    );
  }
}

class _CustomOutlineButton extends StatelessWidget {
  final ThemeData theme;
  final String textButton;
  final IconData icon;
  const _CustomOutlineButton({
    required this.theme, 
    required this.textButton, 
    required this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: theme.cardColor,
      
      border: Border.all(
        color: theme.outlineButtonText,
        width: 1
      ),
      borderRadius: BorderRadius.circular(64),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20,),
            const SizedBox(
              width: 8,
            ),
            Text(textButton, style: theme.textTheme.labelMedium,),
          ],
        ),
      ),
    );
  }
}

