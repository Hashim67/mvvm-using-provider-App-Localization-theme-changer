import'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LanguageChangeProvider extends ChangeNotifier{

Locale? _appLocale;
Locale?  get appLocale => _appLocale;

void changeLanguage(Locale type)async{
SharedPreferences sp = await SharedPreferences.getInstance();
_appLocale = type;

if(type == Locale('en')){

  await sp.setString('language_code', 'en');

}else if (type == Locale('ur')){

  await sp.setString('language_code', 'ur');

}else if (type == Locale('es')){

  await sp.setString('language_code', 'es');
  
}else{

  await sp.setString('language_code', 'ar');
}
notifyListeners();
}

}