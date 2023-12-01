import 'package:testing_console_apps/menus/main_menu.dart';
import 'package:testing_console_apps/menus/setting_menu.dart';
import 'package:testing_console_apps/services/extension_service.dart';
import 'dart:io';

import 'package:testing_console_apps/services/navigation_service.dart';
class HomeMenu extends Menu{
  static const id = "/home_menu";

  Future<void> selectMenu(String press) async {
    switch(press){
      case "1":{
        await Navigator.push(SettingMenu());
      }
      break;
      case "2": exit(0);
      default: build();
    }
  }

  @override
  Future<void> build()async{
    print("welcome".tr);
    print("1. Setting menu");
    print("2. Exit");

    String press = stdin.readLineSync() ?? "";

    await selectMenu(press);


  }

}