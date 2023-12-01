enum Language{en, uz, ru}


class LanguageService{

  static Language _language = Language.en;

  static Language get getLanguage => _language;

  static set setLanguage(Language language){
    _language = language;
  }

  static void switchLanguage(String lang){
    switch(lang){
      case "I":{_language = Language.uz;} break;
      case "II":{_language = Language.ru;} break;
      case "III":{_language = Language.en;} break;
    }

  }




}