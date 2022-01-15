import 'package:flutter/material.dart';
import 'package:snap_for_me/config/constants/colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        fontFamily: "Tajawal",
        primaryIconTheme: IconThemeData(
          color: isDarkTheme ? primaryColorLight : primaryColorDark,
        ),
        iconTheme: IconThemeData(
          color: isDarkTheme ? primaryColorLight : primaryColorDark,
        ),
        scaffoldBackgroundColor:
            isDarkTheme ? primaryColorDark : primaryColorLight,
        primaryColor: isDarkTheme ? primaryColorDark : primaryColorLight,
        backgroundColor: isDarkTheme ? primaryColorDark : primaryColorLight,
        buttonTheme: ButtonThemeData(
          buttonColor: isDarkTheme ? primaryColorDark : primaryColorLight,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: isDarkTheme ? primaryColorDark : primaryColorLight,
          foregroundColor: isDarkTheme ? primaryColorLight : primaryColorDark,
          iconTheme: IconThemeData(
              color: isDarkTheme ? primaryColorLight : primaryColorDark),
          actionsIconTheme: IconThemeData(
              color: isDarkTheme ? primaryColorLight : primaryColorDark),
          titleTextStyle: TextStyle(
              fontFamily: "Tajawal",
              color: isDarkTheme ? primaryColorLight : primaryColorDark),
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? primaryColorLight : primaryColorDark,
        ),
        textTheme: TextTheme(
          headline5: TextStyle(
            color: isDarkTheme ? primaryColorDark : primaryColorLight,
          ),
        ));
  }
}
