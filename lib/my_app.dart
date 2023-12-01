import 'package:testing_console_apps/services/language_service.dart';

import 'menus/main_menu.dart';

class MyApp{

  static Map<String, Menu> routeMenu = {};

  MyApp({
    required Menu home,
    required Map<String, Menu> routes,
    required Language lang,
  }){
    LanguageService.setLanguage = lang;
    routeMenu = routes;
    _runApp(home);
  }

  Future<void> _runApp(Menu menu)async{
    while(true){
      await menu.build();
    }
  }


}