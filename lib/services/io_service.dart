import 'dart:io';

class IOService{

  static void write<T>(T str){
    stdout.write(str);
  }

  static String read<T>(){
    return stdin.readLineSync() ?? "";
  }

  ///prints with border
  void pBorder(Object? value){
    print('\x1b[51m $value \x1b[0m');
  }

  ///prints bold
  void pBold(Object? value){
    print('\x1B[1m $value \x1B[0m');
  }

  ///prints in red color
  void pRed(Object? value){
    print('\x1b[31m $value\x1b[0m');
  }

  ///prints in green color
  void pGreen(Object? value){
    print('\x1b[32m $value\x1b[0m');
  }

  ///prints in blue color
  void pBlue(Object? value){
    print('\x1b[34m $value\x1b[0m');
  }


}