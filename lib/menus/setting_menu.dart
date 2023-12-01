import 'dart:io';

import 'package:testing_console_apps/menus/main_menu.dart';

class SettingMenu extends Menu{
  static const id = "/settings_menu";

  Future<void> selectMenu(String press) async {
    switch(press){
      case "1":{
        print("1 pressed");
      }
      break;
      case "2": exit(0);
      default: build();
    }
  }


  @override
  Future<void> build() async{

    print("SettingMenu");

    String press = stdin.readLineSync() ?? "";

    await selectMenu(press);

  }

}