import 'package:flutter/material.dart';
import 'package:mvvm/Utlis/routes/routes.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/ViewModel/auth_view_model.dart';
import 'package:mvvm/ViewModel/language_change_provider.dart';
import 'package:mvvm/ViewModel/profile_provider.dart';
import 'package:mvvm/ViewModel/theme_changer_provider.dart';
import 'package:mvvm/ViewModel/user_view_model.dart';
import 'package:provider/provider.dart';
import'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String languageCode = sp.getString('language_code') ?? '';
  runApp(MyApp(locale: languageCode,));
}

class MyApp extends StatelessWidget {
  final String locale;
  const MyApp({Key? key, required this.locale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => LanguageChangeProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return Consumer<LanguageChangeProvider>(
            builder: (context, provider, child) {
              if (locale.isEmpty) {
                provider.changeLanguage(Locale('en'));
              }
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                // themeMode: themeChanger.themeMode,
                // theme: ThemeData(
                //    brightness: Brightness.light,
                // ),
                // darkTheme: ThemeData(
                //    brightness: Brightness.dark
                // ),
                theme: themeChanger.getTheme(), // Default theme
                darkTheme: themeChanger.getTheme(), // Dark theme
                themeMode: themeChanger.getThemeMode(),// Get the current theme mode
                locale: locale.isEmpty ? Locale('en') : provider.appLocale ?? Locale('en'),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  Locale('en'),
                  Locale('ar'),
                  Locale('es'),
                  Locale('ur'),
                ],
                initialRoute: RoutesName.splash,
                onGenerateRoute: Routes.generateRoute,
              );
            },
          );
        },
      ),
    );
  }
}
