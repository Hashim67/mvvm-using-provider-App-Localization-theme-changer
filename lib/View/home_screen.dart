
import 'package:flutter/material.dart';
import 'package:mvvm/Data/response/status.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/Utlis/utlis.dart';
import 'package:mvvm/ViewModel/home_view_model.dart';
import 'package:mvvm/ViewModel/user_view_model.dart';
import 'package:provider/provider.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import 'package:mvvm/Model/auth_model.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel homeViewModel = HomeViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeViewModel.fetchMovieListApi();
  }

  

  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text(AppLocalizations.of(context)!.getMovieData),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          InkWell(
              onTap: (){
             userPreference.remove().then((value) {
              Navigator.pushNamed(context, RoutesName.login);
             });
              },
              child:  Center(child: Text(AppLocalizations.of(context)!.logout),),
              
              ),
              const SizedBox(width: 20,),
        ],
      ),
      body:ChangeNotifierProvider<HomeViewModel>(
  create: (BuildContext context) => homeViewModel,
  child: Consumer<HomeViewModel>(
    builder: (context, value, _) {
      switch (value.movieList.status) {
        case Status.LOADING:
          return const Center(child: CircularProgressIndicator());
        case Status.ERROR:
          
          return Center(child: Text(value.movieList.message.toString()));
        case Status.COMPLETED:
          return ListView.builder(
            itemCount: value.movieList.data!.movies!.length,
            itemBuilder: ((context, index) {
            
            return Card(
              child: ListTile(
                leading:Image.network(value.movieList.data!.movies![index].posterurl.toString(),
                errorBuilder: ((context, error, stackTrace) {
                  return const Icon(Icons.error, color: Colors.red,);
                } ),
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                ),
                title: Text(value.movieList.data!.movies![index].title.toString()),
                subtitle: Text(value.movieList.data!.movies![index].year.toString()),
                trailing: Row(
                mainAxisSize: MainAxisSize.min,
                  children: [
                  Text(Utlis.averageRating(value.movieList.data!.movies![index].ratings!).toStringAsFixed(1)),
                    const Icon(Icons.star, color: Colors.yellow,),
                  ],
                ),
              ),
            );
          }));
        default:
        
          return Container(); // or any other appropriate action
      }
      
    },
  
  ),
  
),
   bottomNavigationBar: CurvedNavigationBar(
    
    backgroundColor: Colors.white,
    color: Colors.orange,
    animationDuration: const Duration(milliseconds: 300),
    onTap: (index){
      if(index == 0){
      Navigator.pushNamed(context, RoutesName.home);
      }
      if(index ==1){
        Navigator.pushNamed(context, RoutesName.getLogin);
      }else{
        Navigator.pushNamed(context, RoutesName.profileScreen);
      }
      
    },
    items:  [
  Image.asset('assests/home_icon.png', width: 30, height: 30), // Adjust width and height as needed
  Image.asset('assests/category.png', width: 30, height: 30), // Adjust width and height as needed
  Image.asset('assests/profile_icon.png', width: 30, height: 30), // Adjust width and height as needed

   ]),

    );
    
  }
}
    

  
  // body: Consumer<AuthViewModel>(
  //         builder: ((context, value, child) 
  //         {
  //           if (value.loading) {
  //             // Display circular progress indicator while loading data
  //             return const Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           } else {
  //           // Data loginData = value.authModelData!;
  //           //Business business = loginData.business!;
  //           List<Location> location = value.authModelData!.location!;
  //           return 
  //               ListView.builder(
  //                     itemCount: location.length,
  //                     itemBuilder: (context, index) {
  //                       //  int index = position + 1;
  //                         final locationItem = location[index];
                       
  //                         return Card(
  //                           child: Padding(
  //                             padding: const EdgeInsets.all(20.0),
  //                             child: ListTile(
  // //                              leading: cachedNetworkImageWithFallback(
  // //   category.imageUrl.toString(),
  // // ),
  //                               title: Text(
  //                                 'Location Name : ${locationItem.name}',
  //                               ),
  //                               subtitle: Text(
  //                                   'Description:${locationItem.city}'),
                             
  //                             ),
  //                           ),
  //                         );
                       
  //                     },
  //                   );
              
            
  //           }
  //         }
  //         ),
         
  //       ),

 

