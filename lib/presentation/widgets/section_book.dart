import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SectionBook extends StatelessWidget {
  const SectionBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TitleSectionBook()
      ],
    );
  }
}

class _TitleSectionBook extends StatelessWidget {
  const _TitleSectionBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTitleSectionBook = Theme.of(context).textTheme.titleSmall;
    return  Container(
      margin: EdgeInsets.all(16),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric( vertical: 16.0, horizontal: 8),
      child: Text('Book your visit', style: themeTitleSectionBook,),
    );
  }
}