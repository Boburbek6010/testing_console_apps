import 'dart:io';

import 'package:http/http.dart';
import 'package:testing_console_apps/menus/home_menu.dart';
import 'package:testing_console_apps/menus/setting_menu.dart';
import 'package:testing_console_apps/my_app.dart';
import 'package:testing_console_apps/services/extension_service.dart';
import 'package:testing_console_apps/services/io_service.dart';
import 'package:testing_console_apps/services/language_service.dart';
import 'package:translator/translator.dart';

Future<void> main() async {

  // while(true){
  //
  //   print("welcome".tr);
  //
  //   print("I uz");
  //   print("II ru");
  //   print("III en");
  //
  //   String lang = stdin.readLineSync()!;
  //
  //   LanguageService.switchLanguage = lang;
  //
  //   print("welcome".tr);
  // }



  var translator = GoogleTranslator();

  String str = IOService.read();

  Translation result = await str.translate(to: "uz", from: "");

  IOService.write(result);






  // MyApp(
  //     home: HomeMenu(),
  //     lang: Language.uz,
  //     routes: {
  //       HomeMenu.id:HomeMenu(),
  //       SettingMenu.id:SettingMenu()
  //     },
  // );
}