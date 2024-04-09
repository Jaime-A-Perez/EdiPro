import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/presentation/widgets/section_hero.dart';
import 'package:flutter/material.dart';

class ShedulingServices extends StatelessWidget {
  const ShedulingServices({super.key});

  @override
  Widget build(BuildContext context) {
  final color = Theme.of(context);
    return Scaffold(
       appBar: AppBar(
          title:  Text('EdiPro', style: TextStyle(color: color.titles),),
        ),
      body: _ScrollContent(colors: [color.primaryColor, Colors.white],))
    ;
  }
}

class _ScrollContent extends StatelessWidget {
  final List<Color> colors;

  const _ScrollContent({   
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient( 
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: const Column(
          children: [
            SectionHero(
              title: 'Do you need help at home? \nSchedule services in a jiffy!',
              suportingText: 'Organize your meetings by reserving common spaces, add visitors and send them invitations.',
            )
          ],
        ),
      );
  }
}

