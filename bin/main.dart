import 'package:testing_console_apps/menus/home_menu.dart';
import 'package:testing_console_apps/menus/setting_menu.dart';
import 'package:testing_console_apps/models/lang_model.dart';
import 'package:testing_console_apps/my_app.dart';
import 'package:testing_console_apps/services/io_service.dart';
import 'package:testing_console_apps/services/language_service.dart';
import 'package:translator/translator.dart';

Future<void> main() async {

  // while(true){

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
  //
  // var translate = GoogleTranslator();
  //
  //
  // translate.translateAndPrint("text", to: "uz");



  // checkLang();









  MyApp(
      home: HomeMenu(),
      lang: Language.uz,
      routes: {
        HomeMenu.id:HomeMenu(),
        SettingMenu.id:SettingMenu()
      },
  );
}


Future<void> checkLang() async {
  print("Enter text");
  String str = IOService.read();
  print("from");
  String from = IOService.read();
  print("to");
  String to = IOService.read();

  bool isFrom = LanguageList.langs.containsKey(from);
  bool isTo = LanguageList.langs.containsKey(to);

  if(isFrom && isTo) {
    Translation result = await str.translate(to: to, from: from);
    IOService.write(result);
  }else{
    print("Tanlangan til mavjud emas\n");

    print("Mavjud tillar: ");
    LanguageList.langs.forEach((key, value) {
      print("Key: $key : Value: $value");
    });

    print("Qaytadan urining");
    checkLang();
  }
}