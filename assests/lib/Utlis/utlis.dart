
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

class Utlis{

  static double averageRating(List<int> rating){
   var avgRating = 0;
   for(int i = 0; i < rating.length ; i++ ){
   
    avgRating = avgRating + rating[i];

   }

   return double.parse((avgRating/rating.length).toStringAsFixed(1));
  }

  static void fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus){
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);

  }

static flushBarErrorMessage(String message, BuildContext context){
  showFlushbar(context: context, 
  flushbar: Flushbar(
   forwardAnimationCurve: Curves.decelerate,
   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
   padding: const EdgeInsets.all(15),
   message: message,
   duration: const Duration(seconds: 3),
   backgroundColor: Colors.red,
   reverseAnimationCurve: Curves.easeInOut,
   positionOffset: 20,
   icon: const Icon(Icons.error,size: 28, color: Colors.white,),
   flushbarPosition: FlushbarPosition.TOP,
   borderRadius: BorderRadius.circular(8),


  )..show(context),
  );

}

static snackBar(String message, BuildContext context){
return ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
  backgroundColor: Colors.red,
  content: Text(message),
  ),
);
}

}