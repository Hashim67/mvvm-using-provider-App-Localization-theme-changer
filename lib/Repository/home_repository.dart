import 'dart:developer';

import 'package:mvvm/Data/network/base_api_services.dart';
import 'package:mvvm/Data/network/network_api_service.dart';
//import 'package:mvvm/Model/auth_model.dart';
import 'package:mvvm/Model/movie_model.dart';

import 'package:mvvm/Res/app_url.dart';

class HomeRepository {
  BaseApiServices _apiServices = NetworkApiService();

  //// Fetch Movie List /////////

  Future<MovieListModel> fechMovieList() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(
        AppUrl.moviesListEndPoint,
      );
      log('response getGetApiResponse movies >>> ${response}');
      return response = MovieListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }

/////// Fetch Login Data //////

  // Future<AuthModel> fechLoginData() async {
  //   try {
  //     dynamic response = await _apiServices.getGetApiResponse(
  //       AppUrl.categoryLoginEndPoint,
  //     );
  //     log('response getGetApiResponse >>> ${response}');
  //     return response = authModelFromMap(response);
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
