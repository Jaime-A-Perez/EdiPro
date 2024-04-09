import 'package:edi_pro/presentation/widgets/section_book/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class SectionBook extends StatelessWidget {
  const SectionBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TitleSectionBook(),
        Container(     
          margin: EdgeInsets.all(8), 
          width: 670,
          height: 300,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CustomCard();
              },
          ),
        ),
      ],
    );
  }
}

class _TitleSectionBook extends StatelessWidget {
  const _TitleSectionBook(    
  );

  @override
  Widget build(BuildContext context) {
    final themeTitleSectionBook = Theme.of(context).textTheme.titleSmall;
    return  Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric( vertical: 16.0, horizontal: 8),
      child: Text('Book your visit', style: themeTitleSectionBook,),
    );
  }
}