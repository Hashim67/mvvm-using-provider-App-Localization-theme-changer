import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/ViewModel/language_change_provider.dart';
import 'package:mvvm/ViewModel/profile_provider.dart';
import 'package:mvvm/ViewModel/theme_changer_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

enum Languages { english, spanish, urdu, arabic }

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChanger>(
      builder: (context, themeChanger, child){
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.profileScreen),
            centerTitle: true,
            backgroundColor: Colors.orange,
            
            actions: [
      Consumer<LanguageChangeProvider>(
        builder: (context, provider, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              showLanguageMenu(context, provider);
            },
            child: Image.asset(
              'assests/language.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      );
        },
      ),
              const SizedBox(
                width: 0,
              ),
      
       Consumer<ThemeChanger>(
        builder: (context, themeChanger, _) {
      return PopupMenuButton<ThemeMode>(
        icon: const Icon(Icons.lightbulb_outline),
        onSelected: (ThemeMode mode) {
          themeChanger.setTheme(mode);
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<ThemeMode>>[
          PopupMenuItem<ThemeMode>(
            value: ThemeMode.light,
            child: ListTile(
              title: const Text('Light Mode'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: themeChanger.getThemeMode(),
                onChanged: (ThemeMode? value) {
                  themeChanger.setTheme(ThemeMode.light);
                },
              ),
            ),
          ),
          PopupMenuItem<ThemeMode>(
            value: ThemeMode.dark,
            child: ListTile(
              title: const Text('Dark Mode'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: themeChanger.getThemeMode(),
                onChanged: (ThemeMode? value) {
                  themeChanger.setTheme(ThemeMode.dark);
                },
              ),
            ),
          ),
        ],
      );
        },
      ),
      
      
      
                ////// PopUpMenu List For Languages /////
      
              // Consumer<LanguageChangeProvider>(
              //   builder: ((context, provider, child) {
              //     return Center(
              //       child: PopupMenuButton(
              //           onSelected: (Languages item) {
              //             if (Languages.english.name == item.name) {
              //               provider.changeLanguage(Locale('en'));
              //             } else if (Languages.spanish.name == item.name) {
              //               provider.changeLanguage(Locale('es'));
              //             } else if (Languages.arabic.name == item.name) {
              //               provider.changeLanguage(Locale('ar'));
              //             } else {
              //               provider.changeLanguage(Locale('ur'));
              //             }
              //           },
              //           itemBuilder: (BuildContext context) =>
              //               <PopupMenuEntry<Languages>>[
              //                 const PopupMenuItem(
              //                   value: Languages.english,
              //                   child: Text('English'),
              //                 ),
              //                 const PopupMenuItem(
              //                   value: Languages.spanish,
              //                   child: Text('Spanish'),
              //                 ),
              //                 const PopupMenuItem(
              //                   value: Languages.arabic,
              //                   child: Text('Arabic'),
              //                 ),
              //                 const PopupMenuItem(
              //                   value: Languages.urdu,
              //                   child: Text('Urdu'),
              //                 ),
              //               ]),
              //     );
              //   }),
              // ),
             
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Consumer<ProfileProvider>(
                builder: (context1, profileProvider, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 4,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: profileProvider.image != null
                                  ? FileImage(profileProvider.image!)
                                  : null,
                              child: profileProvider.image == null
                                  ? Icon(
                                      Icons.person,
                                      size: 60,
                                      color: Colors.grey[400],
                                    )
                                  : null,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: ElevatedButton(
                              onPressed: () {
                                _showImagePicker(context);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.orange,
                                padding: const EdgeInsets.all(15),
                                elevation: 5,
                              ),
                              child: const Icon(
                                Icons.add_a_photo,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {
                          profileProvider.setUsername(value);
                        },
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)?.enterYourName,
                          labelText: AppLocalizations.of(context)?.username,
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Implement update functionality
                          print('Username: ${profileProvider.username}');
                          // You can also upload the image to a server here if needed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.update,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
     
    );
  }

////// Image Picker Code //////
  void _showImagePicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(AppLocalizations.of(context)!.selectImage),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                final pickedFile =
                    await ImagePicker().pickImage(source: ImageSource.camera);
                Provider.of<ProfileProvider>(context, listen: false).setImage(
                  pickedFile != null ? File(pickedFile.path) : null,
                );
                Navigator.of(context).pop();
              },
              child:  Text(AppLocalizations.of(context)!.camera),
            ),
            TextButton(
              onPressed: () async {
                final pickedFile =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                Provider.of<ProfileProvider>(context, listen: false).setImage(
                  pickedFile != null ? File(pickedFile.path) : null,
                );
                Navigator.of(context).pop();
              },
              child:  Text(AppLocalizations.of(context)!.gallery),
            ),
          ],
        );
      },
    );
  }

  ///////// 
  // Function to display the language menu
void showLanguageMenu(BuildContext context, LanguageChangeProvider provider) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildLanguageMenuItem(context, provider, Languages.english),
            buildLanguageMenuItem(context, provider, Languages.spanish),
            buildLanguageMenuItem(context, provider, Languages.arabic),
            buildLanguageMenuItem(context, provider, Languages.urdu),
          ],
        ),
      );
    },
  );
}

// Function to build each language menu item
Widget buildLanguageMenuItem(BuildContext context, LanguageChangeProvider provider, Languages language) {
  return ListTile(
    title: Text(language.name.toUpperCase()),
    onTap: () {
      switch (language) {
        case Languages.english:
          provider.changeLanguage(const Locale('en'));
          break;
        case Languages.spanish:
          provider.changeLanguage(const Locale('es'));
          break;
        case Languages.arabic:
          provider.changeLanguage(const Locale('ar'));
          break;
        case Languages.urdu:
          provider.changeLanguage(const Locale('ur'));
          break;
        default:
          break;
      }
      Navigator.pop(context); // Close the dialog after selecting a language
    },
  );
}
}

























// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:mvvm/ViewModel/profile_provider.dart';
// import 'package:provider/provider.dart';

// class ProfileScreen extends StatefulWidget {
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Profile Screen'),
//           centerTitle: true,
//           backgroundColor: Colors.orange,
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(25.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Consumer<ProfileProvider>(
//                   builder: (context, profileProvider, child) {
//                     return Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         CircleAvatar(
//                           radius: 80,
//                           backgroundImage: profileProvider.image != null
//                               ? FileImage(profileProvider.image!)
//                               : null,
//                           child: profileProvider.image == null
//                               ? Icon(Icons.person, size: 60)
//                               : null,
//                         ),
//                         Positioned(
//                           bottom: 0,
//                           right: 0,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return AlertDialog(
//                                     title: const Text('Select Image'),
//                                     actions: <Widget>[
//                                       TextButton(
//                                         onPressed: () async {
//                                           final pickedFile = await ImagePicker()
//                                               .pickImage(source: ImageSource.camera);
//                                           Provider.of<ProfileProvider>(context,
//                                                   listen: false)
//                                               .setImage(
//                                                   pickedFile != null
//                                                       ? File(pickedFile.path)
//                                                       : null);
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: const Text('Camera'),
//                                       ),
//                                       TextButton(
//                                         onPressed: () async {
//                                           final pickedFile = await ImagePicker()
//                                               .pickImage(source: ImageSource.gallery);
//                                           Provider.of<ProfileProvider>(context,
//                                                   listen: false)
//                                               .setImage(
//                                                   pickedFile != null
//                                                       ? File(pickedFile.path)
//                                                       : null);
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: const Text('Gallery'),
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               );
//                             },
//                             child: Icon(Icons.add_a_photo),
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 Consumer<ProfileProvider>(
//                   builder: (context, profileProvider, child) {
//                     return TextFormField(
//                       onChanged: (value) {
//                         Provider.of<ProfileProvider>(context, listen: false)
//                             .setUsername(value);
//                       },
//                       decoration: const InputDecoration(
//                         hintText: 'Enter your username',
//                         labelText: 'Username',
//                         border: OutlineInputBorder(),
//                       ),
//                     );
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement update functionality
//                     final profileProvider =
//                         Provider.of<ProfileProvider>(context, listen: false);
//                     print('Username: ${profileProvider.username}');
//                     // You can also upload the image to a server here if needed
//                   },
//                   child: const Text('Update'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


