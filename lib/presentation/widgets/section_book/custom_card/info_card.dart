import 'package:edi_pro/presentation/widgets/section_book/custom_card/service_chips.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _Ranking(
              icon: Icons.star_border_purple500_rounded,
              qualification: '4.9',
              style: theme.textTheme.bodySmall!,
          ),

          _TitleAndSubtitle(
            theme: theme.textTheme,
            title: 'Terca Cooperativa Carpintería',
            subtitle: "Let's design the furniture you need to harmonize your space.",
          ),
          
          SizedBox(
            height: 16,
          ),

          ServiceChips(),
        ],
      ),
    );
  }
}


class _Ranking extends StatelessWidget {
  final TextStyle style;
  final IconData icon;
  final String qualification;
  const _Ranking({   
    required this.icon, 
    required this.qualification, 
    required this.style
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
     children: [
      Icon(icon,size: 21),
      Text(qualification, style: style,)
     ],
    );
  }
}


class _TitleAndSubtitle extends StatelessWidget {
  final TextTheme theme;
  final String title;
  final String subtitle;
  const _TitleAndSubtitle({    
    required this.theme, 
    required this.title, 
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: Column(
        
        children: [
          Text(
            title, style: theme.titleMedium,
            textAlign: TextAlign.center
            ),
          SizedBox(
            height: 6,
          ),
          Text(
            subtitle, style: theme.bodyMedium,
            textAlign: TextAlign.center
            )
        ],
      ),
    );
  }
}