import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ActionBookWidget extends StatelessWidget {

  final String textFilledButton;
  final String textTextButton;
  const ActionBookWidget({
    super.key, 
    required this.textFilledButton, 
    required this.textTextButton});

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          _FilledButton(
            theme: theme,
            textButton: textFilledButton
            ),
          
          const SizedBox(
            height: 8,
          ),

          _TextButton(
            theme: theme,
            textButton: textTextButton,
            )
        ],
      ),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({
    required this.theme, 
    required this.textButton,
  });

  final String textButton;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      style: ButtonStyle(
        minimumSize: ButtonStyleButton.allOrNull(const Size(double.infinity, 50)),
      ),
      child: Text(textButton, style: theme.textTheme.labelSmall,)
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
        minimumSize: ButtonStyleButton.allOrNull(const Size(double.infinity, 50)),
        backgroundColor: ButtonStyleButton.allOrNull(theme.titles)
      ),
      onPressed: (){}, 
      child: Text(textButton, style: theme.textTheme.labelLarge,));
  }
}