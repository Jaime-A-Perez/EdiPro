import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ActionBook extends StatelessWidget {
  const ActionBook({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          _FilledButton(
            theme: theme,
            textButton: 'Start today'
            )
        ],
      ),
    );
  }
}

class _FilledButton extends StatelessWidget {
  const _FilledButton({
    required this.theme, 
    required this.textButton,
  });

  final String textButton;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        minimumSize: ButtonStyleButton.allOrNull(Size(double.infinity, 50)),
        backgroundColor: ButtonStyleButton.allOrNull(theme.titles)
      ),
      onPressed: (){}, 
      child: Text(textButton, style: theme.textTheme.labelLarge,));
  }
}