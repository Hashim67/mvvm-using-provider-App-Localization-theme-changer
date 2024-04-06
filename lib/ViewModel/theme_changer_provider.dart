import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode getThemeMode() => _themeMode;

  ThemeData getTheme() {
    switch (_themeMode) {
      case ThemeMode.light:
        return ThemeData.light().copyWith(
          // Define your light mode theme properties here
        );
      case ThemeMode.dark:
        return ThemeData.dark().copyWith(
          // Define your dark mode theme properties here
        );
      default:
        return ThemeData.light().copyWith(
          // Define your default light mode theme properties here
        );
    }
  }

  void setTheme(ThemeMode themeMode) async {
    _themeMode = themeMode;
    // Save the selected theme mode to SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', themeMode.index);
    notifyListeners();
  }

  Future<void> loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? themeIndex = prefs.getInt('themeMode');
    if (themeIndex != null) {
      _themeMode = ThemeMode.values[themeIndex];
      notifyListeners();
    }
  }

  void switchToLightTheme() {
    setTheme(ThemeMode.light);
  }

  void switchToDarkTheme() {
    setTheme(ThemeMode.dark);
  }
}


