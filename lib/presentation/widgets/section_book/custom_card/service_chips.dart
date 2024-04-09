import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceChips extends StatelessWidget {
  final List<List<String>> outlineButtons;
  const ServiceChips({
    super.key, 
    required this.outlineButtons});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: outlineButtons.map((uoulineButon) => _CustomOutlineButton(
        icon: (uoulineButon[0]),
        textButton: uoulineButon[1],
        theme: theme, 
      )).toList(),
    );
  }
}

class _CustomOutlineButton extends StatelessWidget {
  final ThemeData theme;
  final String textButton;
  final String icon;
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
        padding: const EdgeInsets.fromLTRB(10, 6, 10, 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.string(icon),
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

