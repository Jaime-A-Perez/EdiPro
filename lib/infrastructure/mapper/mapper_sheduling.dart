
import 'package:edi_pro/domain/entities/sheduling_entity.dart';
import 'package:edi_pro/infrastructure/models/model_sheduling.dart';

class MapperSheduling {

  static ShedulingEntity shedulingToShedulingEntity(
    ModelSheduling modelSheduling ) {
      return ShedulingEntity(
        titleAppBar: modelSheduling.appBarPage?.title ?? 'Title', 
        sectionHero: SectionHeroEntity(
          title: modelSheduling.sectionHero?.title ?? 'Title section hero', 
          supportingText: modelSheduling.sectionHero?.supportingText ?? 'supportingText section hero'), 
        listOfCards: modelSheduling.cards!.map((card) => CardEntity(
          outlineButtons: card.outlineButtons ?? [['Name of service']], 
          imageURL: card.imageUrl ?? '', 
          icon: card.icon ?? '''<svg width="16" height="12" viewBox="0 0 16 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1.25 12C1.0375 12 0.859375 11.9281 0.715625 11.7844C0.571875 11.6406 0.5 11.4625 0.5 11.25C0.5 11.0375 0.571875 10.8594 0.715625 10.7156C0.859375 10.5719 1.0375 10.5 1.25 10.5H14.75C14.9625 10.5 15.1406 10.5719 15.2844 10.7156C15.4281 10.8594 15.5 11.0375 15.5 11.25C15.5 11.4625 15.4281 11.6406 15.2844 11.7844C15.1406 11.9281 14.9625 12 14.75 12H1.25ZM2.75 9C2.5375 9 2.35938 8.92813 2.21563 8.78438C2.07188 8.64062 2 8.4625 2 8.25V3.75C2 3.5375 2.07188 3.35938 2.21563 3.21563C2.35938 3.07188 2.5375 3 2.75 3C2.9625 3 3.14062 3.07188 3.28438 3.21563C3.42813 3.35938 3.5 3.5375 3.5 3.75V8.25C3.5 8.4625 3.42813 8.64062 3.28438 8.78438C3.14062 8.92813 2.9625 9 2.75 9ZM5.75 9C5.5375 9 5.35938 8.92813 5.21563 8.78438C5.07188 8.64062 5 8.4625 5 8.25V0.75C5 0.5375 5.07188 0.359375 5.21563 0.215625C5.35938 0.071875 5.5375 0 5.75 0C5.9625 0 6.14062 0.071875 6.28438 0.215625C6.42813 0.359375 6.5 0.5375 6.5 0.75V8.25C6.5 8.4625 6.42813 8.64062 6.28438 8.78438C6.14062 8.92813 5.9625 9 5.75 9ZM8.75 9C8.5375 9 8.35938 8.92813 8.21563 8.78438C8.07188 8.64062 8 8.4625 8 8.25V0.75C8 0.5375 8.07188 0.359375 8.21563 0.215625C8.35938 0.071875 8.5375 0 8.75 0C8.9625 0 9.14062 0.071875 9.28438 0.215625C9.42813 0.359375 9.5 0.5375 9.5 0.75V8.25C9.5 8.4625 9.42813 8.64062 9.28438 8.78438C9.14062 8.92813 8.9625 9 8.75 9ZM13.9063 8.625C13.7313 8.725 13.5406 8.74688 13.3344 8.69063C13.1281 8.63438 12.975 8.51875 12.875 8.34375L10.625 4.40625C10.525 4.23125 10.5031 4.04063 10.5594 3.83438C10.6156 3.62813 10.7313 3.475 10.9062 3.375C11.0813 3.275 11.2719 3.25313 11.4781 3.30938C11.6844 3.36563 11.8375 3.48125 11.9375 3.65625L14.1875 7.59375C14.2875 7.76875 14.3094 7.95938 14.2531 8.16563C14.1969 8.37188 14.0813 8.525 13.9063 8.625Z" fill="#004F66"/></svg>''', 
          qualification: card.qualification ?? '4.2', 
          title: card.title ?? 'Name of company', 
          subtitle: card.subtitle?? 'Description of services')).toList(), 
        actions: ActionsEntity(
          filledButton: modelSheduling.filledButton ?? 'Filled Button', 
          textButton: modelSheduling.textButton ?? 'Text Button'));
    }
  }