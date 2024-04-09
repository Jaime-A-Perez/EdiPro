
class ShedulingEntity {
  
  final String titleAppBar;
  final SectionHero sectionHero;
  final List<Card> listOfCards;
  final Actions actions;

  ShedulingEntity({required this.titleAppBar, required this.sectionHero, required this.listOfCards, required this.actions}); 
}

class SectionHero {

  final String title;
  final String supportingText;

  SectionHero({required this.title, required this.supportingText});

}

class Card {

  final String imageURL;
  final String icon;
  final String qualification;
  final String title;
  final String subtitle;
  final List<List<String>> outlineButtons;

  Card(this.outlineButtons, {required this.imageURL, required this.icon, required this.qualification, required this.title, required this.subtitle, });

}

class Actions {

  final String filledButton;
  final String textButton;

  Actions({required this.filledButton, required this.textButton});
}