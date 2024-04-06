import 'package:flutter/material.dart';
import 'package:mvvm/Data/response/api_responses.dart';
import 'package:mvvm/Model/auth_model.dart';
import 'package:mvvm/Repository/home_repository.dart';

class CategoryViewModel extends ChangeNotifier{
  final _myRepo = HomeRepository();

  ApiResponse<AuthModel>  loginData = ApiResponse.loading();
  setloginData(ApiResponse<AuthModel> response){
  loginData = response;
  notifyListeners();
  }


  //   Future<void> fechLoginData()async{
  
  //   setMovieList(ApiResponse.loading());

  //   _myRepo.fechLoginData().then((value) {
 
  //   setMovieList(ApiResponse.completed(value));

  //   }).onError((error, stackTrace) {

  //   setMovieList(ApiResponse.error(error.toString()));

  //   });
  // }

}