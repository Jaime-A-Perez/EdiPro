
class ShedulingEntity {
  
  final String titleAppBar;
  final SectionHeroEntity sectionHero;
  final List<CardEntity> listOfCards;
  final ActionsEntity actions;

  ShedulingEntity({required this.titleAppBar, required this.sectionHero, required this.listOfCards, required this.actions}); 
}

class SectionHeroEntity {

  final String title;
  final String supportingText;

  SectionHeroEntity({required this.title, required this.supportingText});

}

class CardEntity {

  final String imageURL;
  final String icon;
  final String qualification;
  final String title;
  final String subtitle;
  final List<List<String>> outlineButtons;

  CardEntity({required this.imageURL, required this.icon, required this.qualification, required this.title, required this.subtitle, required this.outlineButtons });

}

class ActionsEntity {

  final String filledButton;
  final String textButton;

  ActionsEntity({required this.filledButton, required this.textButton});
}