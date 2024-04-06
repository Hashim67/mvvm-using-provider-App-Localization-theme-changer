//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mvvm/Data/response/status.dart';
// import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/ViewModel/category_view_model.dart';
// import 'package:mvvm/ViewModel/user_view_model.dart';
import 'package:provider/provider.dart';

class GetLoginScreen extends StatefulWidget {
  const GetLoginScreen({super.key});

  @override
  State<GetLoginScreen> createState() => _GetLoginScreenState();
}

class _GetLoginScreenState extends State<GetLoginScreen> {
  CategoryViewModel categoryViewModel = CategoryViewModel();
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   var res = categoryViewModel.fechLoginData();

  //   log('res init >>> ${res}');
  // }

  @override
  Widget build(BuildContext context) {
    // final userPreference = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Get Movie Data'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          InkWell(
            onTap: () {
              //  userPreference.remove().then((value) {
              //   Navigator.pushNamed(context, RoutesName.login);
              //  });
            },
            child: const Center(
              child: Text('Logout'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ChangeNotifierProvider<CategoryViewModel>(
        create: (BuildContext context) => categoryViewModel,
        child: Consumer<CategoryViewModel>(
          builder: (context, value, _) {
            switch (value.loginData.status) {
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator());
              case Status.ERROR:
                return Center(child: Text(value.loginData.message.toString()));
              case Status.COMPLETED:
                return ListView.builder(
                    itemCount: value.loginData.data!.data!.location!.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: ListTile(
                          leading: Text(value
                              .loginData.data!.data!.location![index].id
                              .toString()),
                          title: Text(value
                              .loginData.data!.data!.location![index].name
                              .toString()),
                          subtitle: Text(value
                              .loginData.data!.data!.location![index].city
                              .toString()),
                        ),
                      );
                    }));
              default:
                return Container(); // or any other appropriate action
            }
          },
        ),
      ),
    );
  }
}
