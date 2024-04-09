

import 'dart:convert';

ModelSheduling modelShedulingFromJson(String str) => ModelSheduling.fromJson(json.decode(str));

class ModelSheduling {
    final AppBarPage? appBarPage;
    final SectionHero? sectionHero;
    final String? titleBook;
    final List<Card>? cards;
    final String? filledButton;
    final String? textButton;

    ModelSheduling({
        this.appBarPage,
        this.sectionHero,
        this.titleBook,
        this.cards,
        this.filledButton,
        this.textButton,
    });

    factory ModelSheduling.fromJson(Map<String, dynamic> json) => ModelSheduling(
        appBarPage: json["appBarPage"] == null ? null : AppBarPage.fromJson(json["appBarPage"]),
        sectionHero: json["sectionHero"] == null ? null : SectionHero.fromJson(json["sectionHero"]),
        cards: json["Cards"] == null ? [] : List<Card>.from(json["Cards"]!.map((x) => Card.fromJson(x))),
        filledButton: json["filledButton"],
        textButton: json["textButton"],
    );   
}

class AppBarPage {
    final String? title;

    AppBarPage({
        this.title,
    });

    factory AppBarPage.fromJson(Map<String, dynamic> json) => AppBarPage(
        title: json["title"],
    );   
}

class Card {
    final String? imageUrl;
    final String? icon;
    final String? qualification;
    final String? title;
    final String? subtitle;
    final List<List<String>>? outlineButtons;

    Card({
        this.imageUrl,
        this.icon,
        this.qualification,
        this.title,
        this.subtitle,
        this.outlineButtons,
    });

    factory Card.fromJson(Map<String, dynamic> json) => Card(
        imageUrl: json["imageURL"],
        icon: json["icon"],
        qualification: json["qualification"],
        title: json["title"],
        subtitle: json["subtitle"],
        outlineButtons: json["outlineButtons"] == null ? [] : List<List<String>>.from(json["outlineButtons"]!.map((x) => List<String>.from(x.map((x) => x)))),
    );   
}

class SectionHero {
    final String? title;
    final String? supportingText;

    SectionHero({
        this.title,
        this.supportingText,
    });

    factory SectionHero.fromJson(Map<String, dynamic> json) => SectionHero(
        title: json["title"],
        supportingText: json["supportingText"],
    );
}
