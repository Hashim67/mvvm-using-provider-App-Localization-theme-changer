import'package:flutter/material.dart';
import 'package:mvvm/ViewModel/services/splash_services.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.checkAuthentication(context);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text('Splash Screen',style: Theme.of(context).textTheme.headlineLarge,),
      
      );

  }
}