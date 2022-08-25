import 'package:flutter/material.dart';


class ChatApp extends StatefulWidget {
  // =========== create singleton instance from ChatApp ========//
  const ChatApp._internal();
  static const _instance =  ChatApp._internal();
  factory ChatApp() {
    return _instance;
  }
  // =========== [create singleton instance from ChatApp] ========//
  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold( appBar: AppBar(title: const Text("data")), ),
    );
  }
}