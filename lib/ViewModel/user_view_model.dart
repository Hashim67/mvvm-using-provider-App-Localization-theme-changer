import'package:flutter/material.dart';
import 'package:mvvm/Model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class UserViewModel extends ChangeNotifier{

//// Save User Token with Shared Preference /////

Future<bool> saveUser(UserModel user)async{
  final SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString('token', user.token.toString());
  notifyListeners();
  return true;
}


//// Get User Token with Shared Preference /////

Future<UserModel> getUser()async{
 final SharedPreferences sp = await SharedPreferences.getInstance();
 final String? token = sp.getString('token');

return UserModel(
token: token.toString(),
);
} 

//// Remove User Token with Shared Preference /////

Future<bool> remove()async{
  final SharedPreferences sp = await SharedPreferences.getInstance();
  sp.remove('token');
  return true;
}


}