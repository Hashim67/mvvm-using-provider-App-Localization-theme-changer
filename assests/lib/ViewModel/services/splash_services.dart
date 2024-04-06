import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/Model/user_model.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/ViewModel/user_view_model.dart';

class SplashServices{

  Future<UserModel> getUserData()  => UserViewModel().getUser();

  void checkAuthentication(BuildContext context){
    getUserData().then((value)async{
     print(value.token.toString());
    if(value.token.toString() == 'null' || value.token.toString() == ''){
     await Future.delayed(const Duration(seconds: 3));
      Navigator.pushNamed(context, RoutesName.login);

    }else{
    await Future.delayed(const Duration(seconds: 3));
    
     Navigator.pushNamed(context, RoutesName.home);

    }

    }).onError((error, stackTrace) {
     if(kDebugMode){
      print(error.toString());
     }
    });
  }
}