
import 'package:edi_pro/presentation/providers/sheduling_provider.dart';
import 'package:edi_pro/presentation/widgets/section_book/action_book_widget.dart';
import 'package:edi_pro/presentation/widgets/section_book/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SectionBookWidget extends StatelessWidget {
  const SectionBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
  final actions = context.read<ShedulingProvider>().shedulingEntity!.actions;
    return Column(
      children: [
        const _Book(),
        ActionBookWidget(
          textFilledButton: actions.filledButton,
          textTextButton: actions.textButton,
          ),
      ],
    );
  }
}




class _Book extends StatelessWidget {
  const _Book();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TitleSectionBook(),
        _Carrousel(),
      ],
    );
  }
}


class _TitleSectionBook extends StatelessWidget {
  const _TitleSectionBook(    
  );

  @override
  Widget build(BuildContext context) {
    final titleBook = context.read<ShedulingProvider>().shedulingEntity!.titleBook;
    final themeTitleSectionBook = Theme.of(context).textTheme.titleSmall;
    return  Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric( vertical: 16.0, horizontal: 8),
      child: Text(titleBook, style: themeTitleSectionBook,),
    );
  }

}
class _Carrousel extends StatelessWidget {
  const _Carrousel();

  @override
  Widget build(BuildContext context) {
    final listOfCards = context.read<ShedulingProvider>().shedulingEntity!.listOfCards;
    return Container(     
      margin: const EdgeInsets.all(8), 
      width: 670,
      height: 300,
      child: ListView.builder(
        itemCount: listOfCards.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final card = listOfCards[index];
          return CustomCard(card: card,);
          },
      ),
    );
  }
}