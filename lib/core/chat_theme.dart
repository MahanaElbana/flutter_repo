import 'package:chat_flutter_app/core/chat_colors.dart';
import 'package:flutter/material.dart';


ThemeData lightThemeData() {
  return ThemeData.light().copyWith(
    primaryColor: ColorManager. kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
  
    iconTheme: const IconThemeData(color: ColorManager. kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: ColorManager. kPrimaryColor,
      secondary: ColorManager. kSecondaryColor,
      error: ColorManager. kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: ColorManager. kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor:ColorManager.  kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color:ColorManager. kPrimaryColor),
    ),
    appBarTheme:appBarTheme,
  );
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
   primaryColor: ColorManager. kPrimaryColor,
  

  
    scaffoldBackgroundColor: ColorManager.kContentColorLightTheme,
    appBarTheme: appBarTheme ,
    iconTheme: const IconThemeData(color:ColorManager. kContentColorDarkTheme),

     colorScheme: const ColorScheme.light(
      primary: ColorManager. kPrimaryColor,
      secondary: ColorManager. kSecondaryColor,
      error: ColorManager. kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
     // backgroundColor:ColorManager. kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: ColorManager.kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color:ColorManager. kPrimaryColor),
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: true , elevation:  0.0);