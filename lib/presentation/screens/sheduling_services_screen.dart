import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/infrastructure/datasource_impl/datasource_sheduling_imp.dart';
import 'package:edi_pro/presentation/providers/sheduling_provider.dart';
import 'package:edi_pro/presentation/widgets/section_book/section_book_widget.dart';
import 'package:edi_pro/presentation/widgets/section_hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShedulingServicesScreen extends StatelessWidget {
  const ShedulingServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final color = Theme.of(context);
  final provider = context.watch<ShedulingProvider>();
    return provider.shedulingEntity == null
    ? const CircularProgressIndicator()
    : Scaffold(
       appBar: AppBar(
          title:  Text(provider.shedulingEntity!.titleAppBar, style: TextStyle(color: color.titles),),
        ),
      body: _ScrollContent(
        colors: [color.primaryColor, color.cardColor],
        dividerColor: color.dividerColor,))
    ;
  }
}

class _ScrollContent extends StatelessWidget {
  final List<Color> colors;
  final Color dividerColor;

  const _ScrollContent({   
    required this.colors, 
    required this.dividerColor,
  });

  @override
  Widget build(BuildContext context) {
  final sectionHero = context.read<ShedulingProvider>().shedulingEntity!.sectionHero;
    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient( 
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SectionHeroWidget(
                title: sectionHero.title,
                suportingText: sectionHero.supportingText,
              ),
              Divider(
                color: dividerColor,
                height: 1,
              ),
              const SectionBookWidget(),
            ],
          ),
        ),
      );
  }
}

