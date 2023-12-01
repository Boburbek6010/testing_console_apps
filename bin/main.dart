import 'dart:io';

import 'package:testing_console_apps/menus/home_menu.dart';
import 'package:testing_console_apps/menus/setting_menu.dart';
import 'package:testing_console_apps/my_app.dart';
import 'package:testing_console_apps/services/extension_service.dart';
import 'package:testing_console_apps/services/language_service.dart';

void main(){

  while(true){

    print("welcome".tr);

    print("I uz");
    print("II ru");
    print("III en");

    String lang = stdin.readLineSync()!;

    LanguageService.switchLanguage = lang;

    print("welcome".tr);
  }



  // MyApp(
  //     home: HomeMenu(),
  //     routes: {
  //       HomeMenu.id:HomeMenu(),
  //       SettingMenu.id:SettingMenu()
  //     },
  // );
}