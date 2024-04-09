import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/domain/entities/sheduling_entity.dart';
import 'package:edi_pro/presentation/widgets/section_book/custom_card/info_card.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final CardEntity card;  
  const CustomCard({
    super.key, 
    required this.card});

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
          color: theme.outlineButtonText
        )),
      height: 268,
      width: 311,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(card.imageURL),
          ),
          InfoCard(card: card,),
        ],
      ),
    );
  }
}



