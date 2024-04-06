import 'package:flutter/material.dart';
import 'package:mvvm/Data/response/api_responses.dart';
import 'package:mvvm/Model/movie_model.dart';
import 'package:mvvm/Repository/home_repository.dart';

class HomeViewModel extends ChangeNotifier{
  final _myRepo = HomeRepository();
  
  ApiResponse<MovieListModel>  movieList = ApiResponse.loading();
  setMovieList(ApiResponse<MovieListModel> response){
  movieList = response;
  notifyListeners();
  }

    Future<void> fetchMovieListApi()async{
  
    setMovieList(ApiResponse.loading());

    _myRepo.fechMovieList().then((value) {
 
    setMovieList(ApiResponse.completed(value));

    }).onError((error, stackTrace) {

    setMovieList(ApiResponse.error(error.toString()));

    });
  }
}