import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/Model/user_model.dart';
import 'package:mvvm/Repository/auth_repository.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/Utlis/utlis.dart';
import 'package:mvvm/ViewModel/user_view_model.dart';
import 'package:provider/provider.dart';

class AuthViewModel extends ChangeNotifier{
  final _myRepo = AuthRepository();
  AuthRepository get response => _myRepo;
 


  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value){
   _signUpLoading = value;
   notifyListeners();
  }

  // Data? _authModelData ;
  // Data? get authModelData => _authModelData;

  //   Future<void> fetchData() async {
  //   try {
  //     // Fetch data from the repository
  //     final response = await _myRepo.fetchData();
  //     // Update authModelData with the fetched data
  //     _authModelData = response.data;
  //     log('Get Data >>> ${response.data}');

  //     // Notify listeners of the change
  //     notifyListeners();
  //   } catch (e) {
  //     print('Error fetching data: $e');
  //     // Handle error gracefully
  //   }
  // }

  
//// LOGIN API /////
  Future<void> loginApi(dynamic data, BuildContext context)async{

    setLoading(true);

    await _myRepo.loginApi(data).then((value)  {
        
    setLoading(false);
     final userPreference = Provider.of<UserViewModel>(context, listen: false);
     userPreference.saveUser(
      UserModel(
        token: value['token'].toString(),
      )
     );
    Utlis.flushBarErrorMessage('Login Successfully', context);
    Navigator.pushNamed(context, RoutesName.home);
    // Navigator.pushNamed(context, RoutesName.getLogin);

    if(kDebugMode){
    print(value.toString());
    }
  
  }).onError((error, stackTrace) {
   setLoading(false);
   Utlis.flushBarErrorMessage(error.toString(), context);
   if(kDebugMode){
    print(error.toString());
   }
  });
  
  }

  //// SignUP API ////
    Future<void> signUpApi(dynamic data, BuildContext context)async{

    setSignUpLoading(true);
    
      await _myRepo.signUpApi(data ).then((value){
    setSignUpLoading(false);
    Utlis.flushBarErrorMessage('SignUp Successfully', context);
    Navigator.pushNamed(context, RoutesName.home);

    if(kDebugMode){
    print(value.toString());
    }
  
  }).onError((error, stackTrace) {
    setSignUpLoading(false);
   Utlis.flushBarErrorMessage(error.toString(), context);
 
 
  }
  );
  }



}
