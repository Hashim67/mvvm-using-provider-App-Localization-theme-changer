import 'package:mvvm/Data/network/base_api_services.dart';
import 'package:mvvm/Data/network/network_api_service.dart';
import 'package:mvvm/Res/app_url.dart';

class AuthRepository{

  BaseApiServices _apiServices = NetworkApiService();

  /// Login Api Hit Code////
  Future<dynamic> loginApi(dynamic data)async{
    try{
    //  dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
    dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
     return response;
    }catch(e){
      throw e;
    }
  }

   /// SignUp Api Hit Code////
  Future<dynamic> signUpApi(dynamic data)async{
    try{
     dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerEndPoint, data);
     return response;
    }catch(e){
      throw e;
    }
  }

    
    /// Get Api Data
  //   Future<dynamic> fetchData()async{
  //   try{
  //    dynamic response = await _apiServices.getGetApiResponse(AppUrl.categoryLoginEndPoint);
  //    return response;
  //   }catch(e){
  //     throw e;
  //   }
  // }

}