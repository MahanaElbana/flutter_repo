import 'package:chat_flutter_app/controller/theme_controller.dart';

import 'package:chat_flutter_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/chat_theme.dart';
// import 'package:get/get.dart';

class ChatApp extends StatefulWidget {
  // =========== create singleton instance from ChatApp ========//
  const ChatApp._internal();
  static const _instance = ChatApp._internal();
  factory ChatApp() {
    return _instance;
  }
  // =========== [create singleton instance from ChatApp] ========//
  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  final ThemeController _themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      GetMaterialApp(
          // theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,

          theme: lightThemeData(),
          darkTheme  : darkThemeData(),

          themeMode: _themeController.themeMode.value == "light"
              ? ThemeMode.light
              : ThemeMode.dark,
          home: const HomeScreen()),
    );
  }
}
